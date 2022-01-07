
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int wc; } ;


 int bfa_wc_down (int *) ;

void
bfa_itnim_iodone(struct bfa_itnim_s *itnim)
{
 bfa_wc_down(&itnim->wc);
}
