
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_wka_ports {int ks; int as; int ds; int ts; int ms; } ;


 int zfcp_fc_wka_port_force_offline (int *) ;

void zfcp_fc_wka_ports_force_offline(struct zfcp_wka_ports *gs)
{
 zfcp_fc_wka_port_force_offline(&gs->ms);
 zfcp_fc_wka_port_force_offline(&gs->ts);
 zfcp_fc_wka_port_force_offline(&gs->ds);
 zfcp_fc_wka_port_force_offline(&gs->as);
 zfcp_fc_wka_port_force_offline(&gs->ks);
}
