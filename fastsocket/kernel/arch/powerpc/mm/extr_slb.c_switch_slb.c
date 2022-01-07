
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {int context; } ;
struct TYPE_2__ {unsigned long slb_cache_ptr; int context; scalar_t__* slb_cache; } ;


 int CPU_FTR_NO_SLBIE_B ;
 unsigned long KSTK_EIP (struct task_struct*) ;
 unsigned long KSTK_ESP (struct task_struct*) ;
 unsigned long SID_SHIFT ;
 unsigned long SLBIE_C ;
 unsigned long SLBIE_SSIZE_SHIFT ;
 unsigned long SLB_CACHE_ENTRIES ;
 int __slb_flush_and_rebolt () ;
 int cpu_has_feature (int ) ;
 int esids_match (unsigned long,unsigned long) ;
 TYPE_1__* get_paca () ;
 int hard_irq_disable () ;
 scalar_t__ is_kernel_addr (unsigned long) ;
 int slb_allocate (unsigned long) ;
 unsigned long user_segment_size (unsigned long) ;

void switch_slb(struct task_struct *tsk, struct mm_struct *mm)
{
 unsigned long offset;
 unsigned long slbie_data = 0;
 unsigned long pc = KSTK_EIP(tsk);
 unsigned long stack = KSTK_ESP(tsk);
 unsigned long exec_base;







 hard_irq_disable();
 offset = get_paca()->slb_cache_ptr;
 if (!cpu_has_feature(CPU_FTR_NO_SLBIE_B) &&
     offset <= SLB_CACHE_ENTRIES) {
  int i;
  asm volatile("isync" : : : "memory");
  for (i = 0; i < offset; i++) {
   slbie_data = (unsigned long)get_paca()->slb_cache[i]
    << SID_SHIFT;
   slbie_data |= user_segment_size(slbie_data)
    << SLBIE_SSIZE_SHIFT;
   slbie_data |= SLBIE_C;
   asm volatile("slbie %0" : : "r" (slbie_data));
  }
  asm volatile("isync" : : : "memory");
 } else {
  __slb_flush_and_rebolt();
 }


 if (offset == 1 || offset > SLB_CACHE_ENTRIES)
  asm volatile("slbie %0" : : "r" (slbie_data));

 get_paca()->slb_cache_ptr = 0;
 get_paca()->context = mm->context;






 exec_base = 0x10000000;

 if (is_kernel_addr(pc) || is_kernel_addr(stack) ||
     is_kernel_addr(exec_base))
  return;

 slb_allocate(pc);

 if (!esids_match(pc, stack))
  slb_allocate(stack);

 if (!esids_match(pc, exec_base) &&
     !esids_match(stack, exec_base))
  slb_allocate(exec_base);
}
