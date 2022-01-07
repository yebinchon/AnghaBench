
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct list_head {int dummy; } ;
struct bfa_rport_qualifier_s {int pid; scalar_t__ pwwn; } ;
struct bfa_fcs_s {int dummy; } ;
struct bfa_fcs_rport_s {int pid; scalar_t__ pwwn; } ;
struct bfa_fcs_lport_s {struct list_head rport_q; struct bfa_fcs_s* fcs; } ;


 int bfa_ntoh3b (int) ;
 struct list_head* bfa_q_first (struct list_head*) ;
 struct list_head* bfa_q_next (struct list_head*) ;
 int bfa_trc (struct bfa_fcs_s*,int) ;

void
bfa_fcs_lport_get_rport_quals(struct bfa_fcs_lport_s *port,
  struct bfa_rport_qualifier_s rports[], int *nrports)
{
 struct list_head *qh, *qe;
 struct bfa_fcs_rport_s *rport = ((void*)0);
 int i;
 struct bfa_fcs_s *fcs;

 if (port == ((void*)0) || rports == ((void*)0) || *nrports == 0)
  return;

 fcs = port->fcs;
 bfa_trc(fcs, (u32) *nrports);

 i = 0;
 qh = &port->rport_q;
 qe = bfa_q_first(qh);

 while ((qe != qh) && (i < *nrports)) {
  rport = (struct bfa_fcs_rport_s *) qe;
  if (bfa_ntoh3b(rport->pid) > 0xFFF000) {
   qe = bfa_q_next(qe);
   bfa_trc(fcs, (u32) rport->pwwn);
   bfa_trc(fcs, rport->pid);
   bfa_trc(fcs, i);
   continue;
  }

  if (!rport->pwwn && !rport->pid) {
   qe = bfa_q_next(qe);
   continue;
  }

  rports[i].pwwn = rport->pwwn;
  rports[i].pid = rport->pid;

  i++;
  qe = bfa_q_next(qe);
 }

 bfa_trc(fcs, i);
 *nrports = i;
}
