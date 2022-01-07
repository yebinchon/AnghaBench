
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_params {int dummy; } ;
struct port {int actor_oper_port_state; int partner_admin; int partner_oper; } ;


 int AD_STATE_DEFAULTED ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void __record_default(struct port *port)
{
 if (port) {

  memcpy(&port->partner_oper, &port->partner_admin,
         sizeof(struct port_params));


  port->actor_oper_port_state |= AD_STATE_DEFAULTED;
 }
}
