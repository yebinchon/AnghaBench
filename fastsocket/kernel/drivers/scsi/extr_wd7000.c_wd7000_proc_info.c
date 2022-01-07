
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int host_lock; int host_no; scalar_t__ hostdata; } ;
typedef long off_t ;
struct TYPE_4__ {TYPE_2__* icmb; TYPE_2__* ogmb; } ;
struct TYPE_6__ {int bus_on; int bus_off; int next_ogmb; int control; TYPE_1__ mb; int int_counter; int dma; int irq; int iobase; int rev2; int rev1; } ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_2__ Mailbox ;
typedef TYPE_3__ Adapter ;


 size_t ICMB_CNT ;
 size_t OGMB_CNT ;
 int SPRINTF (char*,...) ;
 size_t i ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd7000_set_info (char*,int,struct Scsi_Host*) ;

__attribute__((used)) static int wd7000_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset, int length, int inout)
{
 Adapter *adapter = (Adapter *)host->hostdata;
 unsigned long flags;
 char *pos = buffer;
 if (inout)
  return (wd7000_set_info(buffer, length, host));

 spin_lock_irqsave(host->host_lock, flags);
 SPRINTF("Host scsi%d: Western Digital WD-7000 (rev %d.%d)\n", host->host_no, adapter->rev1, adapter->rev2);
 SPRINTF("  IO base:      0x%x\n", adapter->iobase);
 SPRINTF("  IRQ:          %d\n", adapter->irq);
 SPRINTF("  DMA channel:  %d\n", adapter->dma);
 SPRINTF("  Interrupts:   %d\n", adapter->int_counter);
 SPRINTF("  BUS_ON time:  %d nanoseconds\n", adapter->bus_on * 125);
 SPRINTF("  BUS_OFF time: %d nanoseconds\n", adapter->bus_off * 125);
 spin_unlock_irqrestore(host->host_lock, flags);




 *start = buffer + offset;

 if ((pos - buffer) < offset)
  return (0);
 else if ((pos - buffer - offset) < length)
  return (pos - buffer - offset);
 else
  return (length);
}
