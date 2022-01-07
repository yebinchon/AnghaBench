
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bfa_fcs_rport_s {int dummy; } ;
struct TYPE_4__ {int num_alpa; int alpabm_valid; int* alpa_pos_map; } ;
struct TYPE_5__ {TYPE_1__ ploop; } ;
struct bfa_fcs_lport_s {int pid; TYPE_3__* fcs; TYPE_2__ port_topo; } ;
struct TYPE_6__ {int bfa; } ;


 int MAX_ALPA_COUNT ;
 int bfa_fcport_get_loop_attr (struct bfa_fcs_lport_s*) ;
 struct bfa_fcs_rport_s* bfa_fcs_lport_get_rport_by_pid (struct bfa_fcs_lport_s*,int) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_create (struct bfa_fcs_lport_s*,int) ;
 int bfa_hton3b (int) ;
 int bfa_trc (int ,int) ;
 int* loop_alpa_map ;

__attribute__((used)) static void
bfa_fcs_lport_loop_online(struct bfa_fcs_lport_s *port)
{
 u8 num_alpa = 0, alpabm_valid = 0;
 struct bfa_fcs_rport_s *rport;
 u8 *alpa_map = ((void*)0);
 int i = 0;
 u32 pid;

 bfa_fcport_get_loop_attr(port);

 num_alpa = port->port_topo.ploop.num_alpa;
 alpabm_valid = port->port_topo.ploop.alpabm_valid;
 alpa_map = port->port_topo.ploop.alpa_pos_map;

 bfa_trc(port->fcs->bfa, port->pid);
 bfa_trc(port->fcs->bfa, num_alpa);
 if (alpabm_valid == 1) {
  for (i = 0; i < num_alpa; i++) {
   bfa_trc(port->fcs->bfa, alpa_map[i]);
   if (alpa_map[i] != bfa_hton3b(port->pid)) {
    pid = alpa_map[i];
    bfa_trc(port->fcs->bfa, pid);
    rport = bfa_fcs_lport_get_rport_by_pid(port,
      bfa_hton3b(pid));
    if (!rport)
     rport = bfa_fcs_rport_create(port,
      bfa_hton3b(pid));
   }
  }
 } else {
  for (i = 0; i < MAX_ALPA_COUNT; i++) {
   if (alpa_map[i] != port->pid) {
    pid = loop_alpa_map[i];
    bfa_trc(port->fcs->bfa, pid);
    rport = bfa_fcs_lport_get_rport_by_pid(port,
      bfa_hton3b(pid));
    if (!rport)
     rport = bfa_fcs_rport_create(port,
      bfa_hton3b(pid));
   }
  }
 }
}
