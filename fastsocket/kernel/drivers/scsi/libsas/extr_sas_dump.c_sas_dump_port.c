
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_sas_port {int num_phys; int id; int oob_mode; int tproto; int iproto; int attached_sas_addr; int sas_addr; int class; } ;


 int SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,int ,int ) ;

void sas_dump_port(struct asd_sas_port *port)
{
 SAS_DPRINTK("port%d: class:0x%x\n", port->id, port->class);
 SAS_DPRINTK("port%d: sas_addr:%llx\n", port->id,
      SAS_ADDR(port->sas_addr));
 SAS_DPRINTK("port%d: attached_sas_addr:%llx\n", port->id,
      SAS_ADDR(port->attached_sas_addr));
 SAS_DPRINTK("port%d: iproto:0x%x\n", port->id, port->iproto);
 SAS_DPRINTK("port%d: tproto:0x%x\n", port->id, port->tproto);
 SAS_DPRINTK("port%d: oob_mode:0x%x\n", port->id, port->oob_mode);
 SAS_DPRINTK("port%d: num_phys:%d\n", port->id, port->num_phys);
}
