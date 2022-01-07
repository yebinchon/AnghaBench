
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mm_struct {int mm_users; int context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int CTX_HWBITS (int ) ;
 int __flush_tlb_pending (int ,unsigned long,unsigned long*) ;
 int atomic_read (int *) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int) ;
 TYPE_1__* current ;
 int get_cpu () ;
 int mm_cpumask (struct mm_struct*) ;
 int put_cpu () ;
 int smp_cross_call_masked (int *,int ,unsigned long,unsigned long,int ) ;
 int xcall_flush_tlb_pending ;

void smp_flush_tlb_pending(struct mm_struct *mm, unsigned long nr, unsigned long *vaddrs)
{
 u32 ctx = CTX_HWBITS(mm->context);
 int cpu = get_cpu();

 if (mm == current->mm && atomic_read(&mm->mm_users) == 1)
  cpumask_copy(mm_cpumask(mm), cpumask_of(cpu));
 else
  smp_cross_call_masked(&xcall_flush_tlb_pending,
          ctx, nr, (unsigned long) vaddrs,
          mm_cpumask(mm));

 __flush_tlb_pending(ctx, nr, vaddrs);

 put_cpu();
}
