
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int csr; } ;
struct TYPE_3__ {int dma_len; } ;


 int BUG () ;
 int CSR_DMA_ENABLE ;
 int DMA_PRINTK (char*,int ,char*,int,char*,unsigned char*) ;
 int HOSTNO ;
 int ICR_ASSERT_DATA ;
 int INITIATOR_COMMAND_REG ;
 int MODE_REG ;
 int MR_DMA_MODE ;
 int MR_ENABLE_EOP_INTR ;
 int NCR5380_read (int ) ;
 int NCR5380_write (int ,int) ;
 int RESET_PARITY_INTERRUPT_REG ;
 int SETUP_HOSTDATA (struct Scsi_Host*) ;
 unsigned char SR_IO ;
 int START_DMA_INITIATOR_RECEIVE_REG ;
 int START_DMA_SEND_REG ;
 int TARGET_COMMAND_REG ;
 TYPE_2__* dregs ;
 TYPE_1__* hostdata ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ) ;
 int sun3_dma_active ;
 int sun3_dma_setup_done ;
 int sun3scsi_dma_start (int,unsigned char*) ;

__attribute__((used)) static int NCR5380_transfer_dma( struct Scsi_Host *instance,
     unsigned char *phase, int *count,
     unsigned char **data)
{
    SETUP_HOSTDATA(instance);
    register int c = *count;
    register unsigned char p = *phase;
    unsigned long flags;


    if(!sun3_dma_setup_done) {
  printk("scsi%d: transfer_dma without setup!\n", HOSTNO);
  BUG();
    }
    hostdata->dma_len = c;

    DMA_PRINTK("scsi%d: initializing DMA for %s, %d bytes %s %p\n",
        HOSTNO, (p & SR_IO) ? "reading" : "writing",
        c, (p & SR_IO) ? "to" : "from", *data);


    local_irq_save(flags);


    sun3scsi_dma_start(c, *data);

    if (p & SR_IO) {
     NCR5380_write(TARGET_COMMAND_REG, 1);
     NCR5380_read(RESET_PARITY_INTERRUPT_REG);
     NCR5380_write(INITIATOR_COMMAND_REG, 0);
     NCR5380_write(MODE_REG, (NCR5380_read(MODE_REG) | MR_DMA_MODE | MR_ENABLE_EOP_INTR));
     NCR5380_write(START_DMA_INITIATOR_RECEIVE_REG, 0);
    } else {
     NCR5380_write(TARGET_COMMAND_REG, 0);
     NCR5380_read(RESET_PARITY_INTERRUPT_REG);
     NCR5380_write(INITIATOR_COMMAND_REG, ICR_ASSERT_DATA);
     NCR5380_write(MODE_REG, (NCR5380_read(MODE_REG) | MR_DMA_MODE | MR_ENABLE_EOP_INTR));
     NCR5380_write(START_DMA_SEND_REG, 0);
    }





    local_irq_restore(flags);

    sun3_dma_active = 1;
    return 0;
}
