
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; void* ldt; } ;
typedef TYPE_1__ mm_context_t ;
struct TYPE_6__ {int mm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LDT_ENTRY_SIZE ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int cpumask_equal (int ,int ) ;
 int cpumask_of (int ) ;
 TYPE_3__* current ;
 int flush_ldt ;
 int load_LDT (TYPE_1__*) ;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;
 int mm_cpumask (int ) ;
 int paravirt_alloc_ldt (void*,int) ;
 int paravirt_free_ldt (void*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_page (int ) ;
 int smp_call_function (int ,int ,int) ;
 int smp_processor_id () ;
 int vfree (void*) ;
 int virt_to_page (void*) ;
 void* vmalloc (int) ;
 int wmb () ;

__attribute__((used)) static int alloc_ldt(mm_context_t *pc, int mincount, int reload)
{
 void *oldldt, *newldt;
 int oldsize;

 if (mincount <= pc->size)
  return 0;
 oldsize = pc->size;
 mincount = (mincount + (PAGE_SIZE / LDT_ENTRY_SIZE - 1)) &
   (~(PAGE_SIZE / LDT_ENTRY_SIZE - 1));
 if (mincount * LDT_ENTRY_SIZE > PAGE_SIZE)
  newldt = vmalloc(mincount * LDT_ENTRY_SIZE);
 else
  newldt = (void *)__get_free_page(GFP_KERNEL);

 if (!newldt)
  return -ENOMEM;

 if (oldsize)
  memcpy(newldt, pc->ldt, oldsize * LDT_ENTRY_SIZE);
 oldldt = pc->ldt;
 memset(newldt + oldsize * LDT_ENTRY_SIZE, 0,
        (mincount - oldsize) * LDT_ENTRY_SIZE);

 paravirt_alloc_ldt(newldt, mincount);





 pc->ldt = newldt;
 wmb();
 pc->size = mincount;
 wmb();

 if (reload) {
  load_LDT(pc);

 }
 if (oldsize) {
  paravirt_free_ldt(oldldt, oldsize);
  if (oldsize * LDT_ENTRY_SIZE > PAGE_SIZE)
   vfree(oldldt);
  else
   put_page(virt_to_page(oldldt));
 }
 return 0;
}
