
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_itnim_s {TYPE_1__* fcpim; int timer; int bfa; int iotov_active; } ;
struct TYPE_2__ {scalar_t__ path_tov; } ;


 int BFA_TRUE ;
 int WARN_ON (int) ;
 int bfa_itnim_hold_io (struct bfa_itnim_s*) ;
 int bfa_itnim_iotov ;
 int bfa_timer_start (int ,int *,int ,struct bfa_itnim_s*,scalar_t__) ;

__attribute__((used)) static void
bfa_itnim_iotov_start(struct bfa_itnim_s *itnim)
{
 if (itnim->fcpim->path_tov > 0) {

  itnim->iotov_active = BFA_TRUE;
  WARN_ON(!bfa_itnim_hold_io(itnim));
  bfa_timer_start(itnim->bfa, &itnim->timer,
   bfa_itnim_iotov, itnim, itnim->fcpim->path_tov);
 }
}
