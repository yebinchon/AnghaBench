
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;
struct ata_host {int n_ports; int dev; int * ports; } ;
typedef int irq_handler_t ;


 int WARN_ON (int ) ;
 int ata_host_register (struct ata_host*,struct scsi_host_template*) ;
 int ata_host_start (struct ata_host*) ;
 int ata_port_desc (int ,char*,int) ;
 int dev_driver_string (int ) ;
 int devm_free_irq (int ,int,struct ata_host*) ;
 int devm_request_irq (int ,int,int ,unsigned long,int ,struct ata_host*) ;

int ata_host_activate(struct ata_host *host, int irq,
        irq_handler_t irq_handler, unsigned long irq_flags,
        struct scsi_host_template *sht)
{
 int i, rc;

 rc = ata_host_start(host);
 if (rc)
  return rc;


 if (!irq) {
  WARN_ON(irq_handler);
  return ata_host_register(host, sht);
 }

 rc = devm_request_irq(host->dev, irq, irq_handler, irq_flags,
         dev_driver_string(host->dev), host);
 if (rc)
  return rc;

 for (i = 0; i < host->n_ports; i++)
  ata_port_desc(host->ports[i], "irq %d", irq);

 rc = ata_host_register(host, sht);

 if (rc)
  devm_free_irq(host->dev, irq, host);

 return rc;
}
