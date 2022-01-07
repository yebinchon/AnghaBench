
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gru_mm_struct {int ms_notifier; int ms_released; int ms_refcnt; } ;
struct TYPE_2__ {int mm; } ;


 int STAT (int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 int gms_free ;
 int gru_dbg (int ,char*,struct gru_mm_struct*,int ,int ) ;
 int grudev ;
 int kfree (struct gru_mm_struct*) ;
 int mmu_notifier_unregister (int *,int ) ;

void gru_drop_mmu_notifier(struct gru_mm_struct *gms)
{
 gru_dbg(grudev, "gms %p, refcnt %d, released %d\n", gms,
  atomic_read(&gms->ms_refcnt), gms->ms_released);
 if (atomic_dec_return(&gms->ms_refcnt) == 0) {
  if (!gms->ms_released)
   mmu_notifier_unregister(&gms->ms_notifier, current->mm);
  kfree(gms);
  STAT(gms_free);
 }
}
