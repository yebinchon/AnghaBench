
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int wc; } ;


 int bfa_fcs_exit_comp ;
 int bfa_fcs_fabric_modstop (struct bfa_fcs_s*) ;
 int bfa_wc_init (int *,int ,struct bfa_fcs_s*) ;
 int bfa_wc_up (int *) ;
 int bfa_wc_wait (int *) ;

void
bfa_fcs_stop(struct bfa_fcs_s *fcs)
{
 bfa_wc_init(&fcs->wc, bfa_fcs_exit_comp, fcs);
 bfa_wc_up(&fcs->wc);
 bfa_fcs_fabric_modstop(fcs);
 bfa_wc_wait(&fcs->wc);
}
