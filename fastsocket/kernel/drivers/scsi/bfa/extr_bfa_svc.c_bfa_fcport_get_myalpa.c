
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bfa_s {int dummy; } ;
struct bfa_fcport_s {int myalpa; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

u8
bfa_fcport_get_myalpa(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 return fcport->myalpa;
}
