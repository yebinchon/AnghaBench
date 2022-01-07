
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bfa_s {int dummy; } ;
struct bfa_fcpim_s {int path_tov; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;

u16
bfa_fcpim_path_tov_get(struct bfa_s *bfa)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);

 return fcpim->path_tov / 1000;
}
