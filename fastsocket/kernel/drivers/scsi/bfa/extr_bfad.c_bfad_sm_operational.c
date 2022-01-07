
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int dummy; } ;
typedef enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;



 int bfa_sm_fault (struct bfad_s*,int) ;
 int bfa_sm_set_state (struct bfad_s*,int ) ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_fcs_stop (struct bfad_s*) ;
 int bfad_sm_fcs_exit ;

__attribute__((used)) static void
bfad_sm_operational(struct bfad_s *bfad, enum bfad_sm_event event)
{
 bfa_trc(bfad, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(bfad, bfad_sm_fcs_exit);
  bfad_fcs_stop(bfad);
  break;

 default:
  bfa_sm_fault(bfad, event);
 }
}
