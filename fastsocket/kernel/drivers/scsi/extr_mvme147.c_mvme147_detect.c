
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned char volatile* SASR; unsigned char volatile* SCMD; } ;
typedef TYPE_1__ wd33c93_regs ;
struct scsi_host_template {char* proc_name; int * proc_info; } ;
struct WD33C93_hostdata {int dummy; } ;
struct TYPE_13__ {int no_sync; int dma_mode; scalar_t__ fast; } ;
struct TYPE_12__ {int scsi_interrupt; int dma_cntrl; int dma_intr; } ;
struct TYPE_11__ {int base; int irq; } ;


 int CTRL_DMA ;
 TYPE_8__* HDATA (TYPE_2__*) ;
 int MACH_IS_MVME147 ;
 int MVME147_IRQ_SCSI_DMA ;
 int MVME147_IRQ_SCSI_PORT ;
 int WD33C93_FS_8_10 ;
 int dma_setup ;
 int dma_stop ;
 int free_irq (int ,int ) ;
 TYPE_7__* m147_pcc ;
 TYPE_2__* mvme147_host ;
 int mvme147_intr ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;
 TYPE_2__* scsi_register (struct scsi_host_template*,int) ;
 int scsi_unregister (TYPE_2__*) ;
 int udelay (int) ;
 int wd33c93_init (TYPE_2__*,TYPE_1__,int ,int ,int ) ;
 int wd33c93_proc_info ;
 int wd33c93_release () ;

int mvme147_detect(struct scsi_host_template *tpnt)
{
    static unsigned char called = 0;
    wd33c93_regs regs;

    if (!MACH_IS_MVME147 || called)
 return 0;
    called++;

    tpnt->proc_name = "MVME147";
    tpnt->proc_info = &wd33c93_proc_info;

    mvme147_host = scsi_register (tpnt, sizeof(struct WD33C93_hostdata));
    if (!mvme147_host)
     goto err_out;

    mvme147_host->base = 0xfffe4000;
    mvme147_host->irq = MVME147_IRQ_SCSI_PORT;
    regs.SASR = (volatile unsigned char *)0xfffe4000;
    regs.SCMD = (volatile unsigned char *)0xfffe4001;
    HDATA(mvme147_host)->no_sync = 0xff;
    HDATA(mvme147_host)->fast = 0;
    HDATA(mvme147_host)->dma_mode = CTRL_DMA;
    wd33c93_init(mvme147_host, regs, dma_setup, dma_stop, WD33C93_FS_8_10);

    if (request_irq(MVME147_IRQ_SCSI_PORT, mvme147_intr, 0, "MVME147 SCSI PORT", mvme147_intr))
     goto err_unregister;
    if (request_irq(MVME147_IRQ_SCSI_DMA, mvme147_intr, 0, "MVME147 SCSI DMA", mvme147_intr))
     goto err_free_irq;







    m147_pcc->scsi_interrupt = 0x09;

    m147_pcc->dma_cntrl = 0x00;
    m147_pcc->dma_intr = 0x89;

    return 1;

 err_free_irq:
    free_irq(MVME147_IRQ_SCSI_PORT, mvme147_intr);
 err_unregister:
    wd33c93_release();
    scsi_unregister(mvme147_host);
 err_out:
    return 0;
}
