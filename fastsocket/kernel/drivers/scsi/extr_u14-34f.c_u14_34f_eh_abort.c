
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int serial_number; int * host_scribble; TYPE_2__* device; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_10__ {scalar_t__* cp_stat; TYPE_3__* cp; } ;
struct TYPE_9__ {unsigned int can_queue; scalar_t__ io_port; } ;
struct TYPE_8__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 scalar_t__ ABORTING ;
 int BN (unsigned int) ;
 int DID_ABORT ;
 int FAILED ;
 scalar_t__ FREE ;
 TYPE_5__* HD (unsigned int) ;
 scalar_t__ IN_RESET ;
 scalar_t__ IN_USE ;
 int IRQ_ASSERTED ;
 int KERN_INFO ;
 scalar_t__ LOCKED ;
 int MAXLOOP ;
 scalar_t__ READY ;
 scalar_t__ REG_SYS_INTR ;
 int SUCCESS ;
 int inb (scalar_t__) ;
 int panic (char*,int ,...) ;
 int printk (char*,int ,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,unsigned int,...) ;
 TYPE_4__** sh ;
 int stub1 (struct scsi_cmnd*) ;
 int unmap_dma (unsigned int,unsigned int) ;
 scalar_t__ wait_on_busy (scalar_t__,int ) ;

__attribute__((used)) static int u14_34f_eh_abort(struct scsi_cmnd *SCarg) {
   unsigned int i, j;

   j = ((struct hostdata *) SCarg->device->host->hostdata)->board_number;

   if (SCarg->host_scribble == ((void*)0)) {
      scmd_printk(KERN_INFO, SCarg, "abort, pid %ld inactive.\n",
             SCarg->serial_number);
      return SUCCESS;
      }

   i = *(unsigned int *)SCarg->host_scribble;
   scmd_printk(KERN_INFO, SCarg, "abort, mbox %d, pid %ld.\n",
        i, SCarg->serial_number);

   if (i >= sh[j]->can_queue)
      panic("%s: abort, invalid SCarg->host_scribble.\n", BN(j));

   if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
      printk("%s: abort, timeout error.\n", BN(j));
      return FAILED;
      }

   if (HD(j)->cp_stat[i] == FREE) {
      printk("%s: abort, mbox %d is free.\n", BN(j), i);
      return SUCCESS;
      }

   if (HD(j)->cp_stat[i] == IN_USE) {
      printk("%s: abort, mbox %d is in use.\n", BN(j), i);

      if (SCarg != HD(j)->cp[i].SCpnt)
         panic("%s: abort, mbox %d, SCarg %p, cp SCpnt %p.\n",
               BN(j), i, SCarg, HD(j)->cp[i].SCpnt);

      if (inb(sh[j]->io_port + REG_SYS_INTR) & IRQ_ASSERTED)
         printk("%s: abort, mbox %d, interrupt pending.\n", BN(j), i);

      return FAILED;
      }

   if (HD(j)->cp_stat[i] == IN_RESET) {
      printk("%s: abort, mbox %d is in reset.\n", BN(j), i);
      return FAILED;
      }

   if (HD(j)->cp_stat[i] == LOCKED) {
      printk("%s: abort, mbox %d is locked.\n", BN(j), i);
      return SUCCESS;
      }

   if (HD(j)->cp_stat[i] == READY || HD(j)->cp_stat[i] == ABORTING) {
      unmap_dma(i, j);
      SCarg->result = DID_ABORT << 16;
      SCarg->host_scribble = ((void*)0);
      HD(j)->cp_stat[i] = FREE;
      printk("%s, abort, mbox %d ready, DID_ABORT, pid %ld done.\n",
             BN(j), i, SCarg->serial_number);
      SCarg->scsi_done(SCarg);
      return SUCCESS;
      }

   panic("%s: abort, mbox %d, invalid cp_stat.\n", BN(j), i);
}
