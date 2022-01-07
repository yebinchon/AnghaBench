
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_lport_stats_s {int dummy; } ;
struct bfa_fcs_lport_s {struct bfa_lport_stats_s stats; } ;



void
bfa_fcs_lport_get_stats(struct bfa_fcs_lport_s *fcs_port,
  struct bfa_lport_stats_s *port_stats)
{
 *port_stats = fcs_port->stats;
}
