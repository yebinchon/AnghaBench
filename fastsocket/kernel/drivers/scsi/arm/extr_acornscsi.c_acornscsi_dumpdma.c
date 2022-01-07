
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int scsi_xferred; int this_residual; int ptr; } ;
struct TYPE_12__ {TYPE_3__ SCp; } ;
struct TYPE_10__ {int transferred; int start_addr; } ;
struct TYPE_13__ {TYPE_4__ scsi; TYPE_2__ dma; TYPE_1__* host; } ;
struct TYPE_9__ {int host_no; } ;
typedef TYPE_5__ AS_Host ;


 int DMAC_MASKREG ;
 int DMAC_MODECON ;
 int DMAC_TXCNTHI ;
 int DMAC_TXCNTLO ;
 unsigned int dmac_address (TYPE_5__*) ;
 int dmac_read (TYPE_5__*,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static
void acornscsi_dumpdma(AS_Host *host, char *where)
{
 unsigned int mode, addr, len;

 mode = dmac_read(host, DMAC_MODECON);
 addr = dmac_address(host);
 len = dmac_read(host, DMAC_TXCNTHI) << 8 |
        dmac_read(host, DMAC_TXCNTLO);

 printk("scsi%d: %s: DMAC %02x @%06x+%04x msk %02x, ",
  host->host->host_no, where,
  mode, addr, (len + 1) & 0xffff,
  dmac_read(host, DMAC_MASKREG));

 printk("DMA @%06x, ", host->dma.start_addr);
 printk("BH @%p +%04x, ", host->scsi.SCp.ptr,
  host->scsi.SCp.this_residual);
 printk("DT @+%04x ST @+%04x", host->dma.transferred,
  host->scsi.SCp.scsi_xferred);
 printk("\n");
}
