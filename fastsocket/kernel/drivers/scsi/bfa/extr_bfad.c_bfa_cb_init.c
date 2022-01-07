
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_flags; int comp; int bfad_tsk; } ;
typedef scalar_t__ bfa_status_t ;


 int BFAD_HAL_INIT_DONE ;
 int BFAD_HAL_INIT_FAIL ;
 scalar_t__ BFA_STATUS_OK ;
 int complete (int *) ;
 int wake_up_process (int ) ;

void
bfa_cb_init(void *drv, bfa_status_t init_status)
{
 struct bfad_s *bfad = drv;

 if (init_status == BFA_STATUS_OK) {
  bfad->bfad_flags |= BFAD_HAL_INIT_DONE;






  if ((bfad->bfad_flags & BFAD_HAL_INIT_FAIL)) {
   bfad->bfad_flags &= ~BFAD_HAL_INIT_FAIL;
   wake_up_process(bfad->bfad_tsk);
  }
 }

 complete(&bfad->comp);
}
