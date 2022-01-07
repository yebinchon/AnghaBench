
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct fc_rscn_pl_s {TYPE_2__* event; int payldlen; } ;
struct TYPE_3__ {int num_portid_rscn; int num_rscn; } ;
struct bfa_fcs_lport_s {TYPE_1__ stats; int fcs; } ;
typedef scalar_t__ bfa_boolean_t ;
struct TYPE_4__ {int portid; int format; int qualifier; } ;


 scalar_t__ BFA_FALSE ;
 scalar_t__ BFA_TRUE ;
 int FC_FABRIC_NAME_RSCN_EVENT ;
 int FC_QOS_RSCN_EVENT ;




 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int bfa_fcs_lport_ms_fabric_rscn (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_ns_query (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_scn_multiport_rscn (struct bfa_fcs_lport_s*,int,int) ;
 int bfa_fcs_lport_scn_portid_rscn (struct bfa_fcs_lport_s*,int) ;
 int bfa_fcs_lport_scn_send_ls_acc (struct bfa_fcs_lport_s*,struct fchs_s*) ;
 int bfa_trc (int ,int) ;

void
bfa_fcs_lport_scn_process_rscn(struct bfa_fcs_lport_s *port,
   struct fchs_s *fchs, u32 len)
{
 struct fc_rscn_pl_s *rscn = (struct fc_rscn_pl_s *) (fchs + 1);
 int num_entries;
 u32 rscn_pid;
 bfa_boolean_t nsquery = BFA_FALSE, found;
 int i = 0, j;

 num_entries =
  (be16_to_cpu(rscn->payldlen) -
   sizeof(u32)) / sizeof(rscn->event[0]);

 bfa_trc(port->fcs, num_entries);

 port->stats.num_rscn++;

 bfa_fcs_lport_scn_send_ls_acc(port, fchs);

 for (i = 0; i < num_entries; i++) {
  rscn_pid = rscn->event[i].portid;

  bfa_trc(port->fcs, rscn->event[i].format);
  bfa_trc(port->fcs, rscn_pid);


  found = BFA_FALSE;
  for (j = 0; j < i; j++) {
   if (rscn->event[j].portid == rscn_pid) {
    found = BFA_TRUE;
    break;
   }
  }


  if (found) {
   bfa_trc(port->fcs, rscn_pid);
   continue;
  }

  switch (rscn->event[i].format) {
  case 128:
   if (rscn->event[i].qualifier == FC_QOS_RSCN_EVENT) {




    bfa_trc(port->fcs, rscn_pid);
   } else {
    port->stats.num_portid_rscn++;
    bfa_fcs_lport_scn_portid_rscn(port, rscn_pid);
   }
  break;

  case 129:
   if (rscn->event[i].qualifier ==
     FC_FABRIC_NAME_RSCN_EVENT) {
    bfa_fcs_lport_ms_fabric_rscn(port);
    break;
   }


  case 131:
  case 130:
   nsquery = BFA_TRUE;
   bfa_fcs_lport_scn_multiport_rscn(port,
       rscn->event[i].format,
       rscn_pid);
   break;


  default:
   WARN_ON(1);
   nsquery = BFA_TRUE;
  }
 }





 if (nsquery)
  bfa_fcs_lport_ns_query(port);
}
