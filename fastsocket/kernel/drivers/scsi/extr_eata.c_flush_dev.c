
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct scsi_cmnd {int serial_number; struct scsi_device* device; } ;
struct mscp {int cp_dma_addr; struct scsi_cmnd* SCpnt; } ;
struct hostdata {scalar_t__* cp_stat; struct mscp* cp; } ;
struct TYPE_2__ {unsigned int can_queue; int io_port; } ;


 scalar_t__ ABORTING ;
 scalar_t__ IN_USE ;
 int KERN_INFO ;
 int MAX_MAILBOXES ;
 scalar_t__ READY ;
 int SEND_CP_DMA ;
 scalar_t__ do_dma (int ,int ,int ) ;
 scalar_t__ reorder (struct hostdata*,unsigned long,unsigned int,unsigned int*,unsigned int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,char*,int ,unsigned int) ;

__attribute__((used)) static void flush_dev(struct scsi_device *dev, unsigned long cursec,
        struct hostdata *ha, unsigned int ihdlr)
{
 struct scsi_cmnd *SCpnt;
 struct mscp *cpp;
 unsigned int k, n, n_ready = 0, il[MAX_MAILBOXES];

 for (k = 0; k < dev->host->can_queue; k++) {

  if (ha->cp_stat[k] != READY && ha->cp_stat[k] != IN_USE)
   continue;

  cpp = &ha->cp[k];
  SCpnt = cpp->SCpnt;

  if (SCpnt->device != dev)
   continue;

  if (ha->cp_stat[k] == IN_USE)
   return;

  il[n_ready++] = k;
 }

 if (reorder(ha, cursec, ihdlr, il, n_ready))
  n_ready = 1;

 for (n = 0; n < n_ready; n++) {
  k = il[n];
  cpp = &ha->cp[k];
  SCpnt = cpp->SCpnt;

  if (do_dma(dev->host->io_port, cpp->cp_dma_addr, SEND_CP_DMA)) {
   scmd_printk(KERN_INFO, SCpnt,
       "%s, pid %ld, mbox %d, adapter"
        " busy, will abort.\n",
        (ihdlr ? "ihdlr" : "qcomm"),
        SCpnt->serial_number, k);
   ha->cp_stat[k] = ABORTING;
   continue;
  }

  ha->cp_stat[k] = IN_USE;
 }
}
