
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {int itnim_drv; TYPE_1__* fcs; int * bfa_itnim; } ;
struct TYPE_2__ {int bfad; } ;


 int bfa_fcb_itnim_free (int ,int ) ;
 int bfa_itnim_delete (int *) ;

__attribute__((used)) static void
bfa_fcs_itnim_free(struct bfa_fcs_itnim_s *itnim)
{
 if (itnim->bfa_itnim) {
  bfa_itnim_delete(itnim->bfa_itnim);
  itnim->bfa_itnim = ((void*)0);
 }

 bfa_fcb_itnim_free(itnim->fcs->bfad, itnim->itnim_drv);
}
