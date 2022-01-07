
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {struct fc_rport* rport; } ;
struct fc_rport {int dummy; } ;


 int fc_remote_port_delete (struct fc_rport*) ;

__attribute__((used)) static void zfcp_scsi_rport_block(struct zfcp_port *port)
{
 struct fc_rport *rport = port->rport;

 if (rport) {
  fc_remote_port_delete(rport);
  port->rport = ((void*)0);
 }
}
