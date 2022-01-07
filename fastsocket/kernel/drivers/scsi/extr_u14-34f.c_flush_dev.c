
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct scsi_cmnd {int serial_number; struct scsi_device* device; } ;
struct mscp {int cp_dma_addr; struct scsi_cmnd* SCpnt; } ;
struct TYPE_4__ {scalar_t__* cp_stat; struct mscp* cp; } ;
struct TYPE_3__ {unsigned int can_queue; scalar_t__ io_port; } ;


 scalar_t__ ABORTING ;
 int CMD_OGM_INTR ;
 int H2DEV (int ) ;
 TYPE_2__* HD (unsigned int) ;
 scalar_t__ IN_USE ;
 int KERN_INFO ;
 int MAXLOOP ;
 int MAX_MAILBOXES ;
 scalar_t__ READY ;
 scalar_t__ REG_LCL_INTR ;
 scalar_t__ REG_OGM ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 scalar_t__ reorder (unsigned int,unsigned long,unsigned int,unsigned int*,unsigned int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,char*,int ,unsigned int) ;
 TYPE_1__** sh ;
 scalar_t__ wait_on_busy (scalar_t__,int ) ;

__attribute__((used)) static void flush_dev(struct scsi_device *dev, unsigned long cursec, unsigned int j,
                      unsigned int ihdlr) {
   struct scsi_cmnd *SCpnt;
   struct mscp *cpp;
   unsigned int k, n, n_ready = 0, il[MAX_MAILBOXES];

   for (k = 0; k < sh[j]->can_queue; k++) {

      if (HD(j)->cp_stat[k] != READY && HD(j)->cp_stat[k] != IN_USE) continue;

      cpp = &HD(j)->cp[k]; SCpnt = cpp->SCpnt;

      if (SCpnt->device != dev) continue;

      if (HD(j)->cp_stat[k] == IN_USE) return;

      il[n_ready++] = k;
      }

   if (reorder(j, cursec, ihdlr, il, n_ready)) n_ready = 1;

   for (n = 0; n < n_ready; n++) {
      k = il[n]; cpp = &HD(j)->cp[k]; SCpnt = cpp->SCpnt;

      if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
         scmd_printk(KERN_INFO, SCpnt,
   "%s, pid %ld, mbox %d, adapter"
                " busy, will abort.\n", (ihdlr ? "ihdlr" : "qcomm"),
                SCpnt->serial_number, k);
         HD(j)->cp_stat[k] = ABORTING;
         continue;
         }

      outl(H2DEV(cpp->cp_dma_addr), sh[j]->io_port + REG_OGM);
      outb(CMD_OGM_INTR, sh[j]->io_port + REG_LCL_INTR);
      HD(j)->cp_stat[k] = IN_USE;
      }

}
