
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_lport_stats_s {int dummy; } ;
struct bfa_fcs_lport_s {int stats; } ;


 int memset (int *,int ,int) ;

void
bfa_fcs_lport_clear_stats(struct bfa_fcs_lport_s *fcs_port)
{
 memset(&fcs_port->stats, 0, sizeof(struct bfa_lport_stats_s));
}
