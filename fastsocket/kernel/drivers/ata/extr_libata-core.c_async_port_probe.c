
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
typedef int async_cookie_t ;
struct TYPE_2__ {int flags; } ;


 int ATA_HOST_PARALLEL_SCAN ;
 int async_synchronize_cookie (int ) ;
 int ata_port_probe (struct ata_port*) ;
 int ata_scsi_scan_host (struct ata_port*,int) ;

__attribute__((used)) static void async_port_probe(void *data, async_cookie_t cookie)
{
 struct ata_port *ap = data;
 if (!(ap->host->flags & ATA_HOST_PARALLEL_SCAN) && ap->port_no != 0)
  async_synchronize_cookie(cookie);

 (void)ata_port_probe(ap);


 async_synchronize_cookie(cookie);

 ata_scsi_scan_host(ap, 1);
}
