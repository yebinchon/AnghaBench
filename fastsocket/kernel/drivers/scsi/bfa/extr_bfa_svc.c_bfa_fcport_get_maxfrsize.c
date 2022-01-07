
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bfa_s {int dummy; } ;
struct TYPE_2__ {int maxfrsize; } ;
struct bfa_fcport_s {TYPE_1__ cfg; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

u16
bfa_fcport_get_maxfrsize(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 return fcport->cfg.maxfrsize;
}
