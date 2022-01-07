
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int context; } ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;
struct TYPE_3__ {int context; } ;


 TYPE_2__* current ;
 TYPE_1__* get_paca () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int slb_flush_and_rebolt () ;

__attribute__((used)) static void slice_flush_segments(void *parm)
{
 struct mm_struct *mm = parm;
 unsigned long flags;

 if (mm != current->active_mm)
  return;


 get_paca()->context = current->active_mm->context;

 local_irq_save(flags);
 slb_flush_and_rebolt();
 local_irq_restore(flags);
}
