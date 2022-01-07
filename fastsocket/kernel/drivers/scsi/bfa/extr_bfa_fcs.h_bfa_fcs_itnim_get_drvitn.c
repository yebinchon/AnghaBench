
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_itnim_s {int dummy; } ;
struct bfa_fcs_itnim_s {struct bfad_itnim_s* itnim_drv; } ;



__attribute__((used)) static inline struct bfad_itnim_s *
bfa_fcs_itnim_get_drvitn(struct bfa_fcs_itnim_s *itnim)
{
 return itnim->itnim_drv;
}
