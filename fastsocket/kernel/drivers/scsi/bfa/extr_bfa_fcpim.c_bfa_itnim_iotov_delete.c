
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int ditn; scalar_t__ iotov_active; } ;
typedef scalar_t__ bfa_boolean_t ;


 scalar_t__ BFA_FALSE ;
 scalar_t__ BFA_TRUE ;
 int bfa_cb_itnim_tov (int ) ;
 int bfa_cb_itnim_tov_begin (int ) ;
 int bfa_itnim_iotov_cleanup (struct bfa_itnim_s*) ;
 int bfa_itnim_iotov_stop (struct bfa_itnim_s*) ;

__attribute__((used)) static void
bfa_itnim_iotov_delete(struct bfa_itnim_s *itnim)
{
 bfa_boolean_t pathtov_active = BFA_FALSE;

 if (itnim->iotov_active)
  pathtov_active = BFA_TRUE;

 bfa_itnim_iotov_stop(itnim);
 if (pathtov_active)
  bfa_cb_itnim_tov_begin(itnim->ditn);
 bfa_itnim_iotov_cleanup(itnim);
 if (pathtov_active)
  bfa_cb_itnim_tov(itnim->ditn);
}
