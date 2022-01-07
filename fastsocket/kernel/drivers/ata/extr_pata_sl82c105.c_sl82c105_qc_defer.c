
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_1__* ap; } ;
struct ata_port {scalar_t__ qc_active; } ;
struct ata_host {struct ata_port** ports; } ;
struct TYPE_2__ {int port_no; struct ata_host* host; } ;


 int ATA_DEFER_PORT ;
 int ata_std_qc_defer (struct ata_queued_cmd*) ;

__attribute__((used)) static int sl82c105_qc_defer(struct ata_queued_cmd *qc)
{
 struct ata_host *host = qc->ap->host;
 struct ata_port *alt = host->ports[1 ^ qc->ap->port_no];
 int rc;


 rc = ata_std_qc_defer(qc);
 if (rc != 0)
  return rc;



 if (alt && alt->qc_active)
  return ATA_DEFER_PORT;
 return 0;
}
