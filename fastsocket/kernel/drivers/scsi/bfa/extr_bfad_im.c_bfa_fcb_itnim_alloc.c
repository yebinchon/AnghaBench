
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_flags; int im; } ;
struct bfa_fcs_itnim_s {int dummy; } ;
struct bfad_itnim_s {int itnim_work; int state; struct bfa_fcs_itnim_s fcs_itnim; int im; } ;


 int BFAD_RPORT_ONLINE ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int ITNIM_STATE_NONE ;
 int bfad_im_itnim_work_handler ;
 struct bfad_itnim_s* kzalloc (int,int ) ;

void
bfa_fcb_itnim_alloc(struct bfad_s *bfad, struct bfa_fcs_itnim_s **itnim,
      struct bfad_itnim_s **itnim_drv)
{
 *itnim_drv = kzalloc(sizeof(struct bfad_itnim_s), GFP_ATOMIC);
 if (*itnim_drv == ((void*)0))
  return;

 (*itnim_drv)->im = bfad->im;
 *itnim = &(*itnim_drv)->fcs_itnim;
 (*itnim_drv)->state = ITNIM_STATE_NONE;




 INIT_WORK(&(*itnim_drv)->itnim_work, bfad_im_itnim_work_handler);
 bfad->bfad_flags |= BFAD_RPORT_ONLINE;
}
