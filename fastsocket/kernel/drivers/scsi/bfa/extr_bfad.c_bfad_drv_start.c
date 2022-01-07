
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {TYPE_1__* im; int bfad_lock; int bfad_flags; int bfa_fcs; int bfa; } ;
struct TYPE_2__ {int drv_workq; } ;


 int BFAD_HAL_START_DONE ;
 int bfa_fcs_fabric_modstart (int *) ;
 int bfa_fcs_pbc_vport_init (int *) ;
 int bfa_iocfc_start (int *) ;
 int flush_workqueue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
bfad_drv_start(struct bfad_s *bfad)
{
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 bfa_iocfc_start(&bfad->bfa);
 bfa_fcs_pbc_vport_init(&bfad->bfa_fcs);
 bfa_fcs_fabric_modstart(&bfad->bfa_fcs);
 bfad->bfad_flags |= BFAD_HAL_START_DONE;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (bfad->im)
  flush_workqueue(bfad->im->drv_workq);
}
