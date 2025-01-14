
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {int result; int serial_number; int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; TYPE_2__* device; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_10__ {int in_reset; scalar_t__* cp_stat; TYPE_3__* cp; scalar_t__** target_to; void*** target_redo; scalar_t__ retries; } ;
struct TYPE_9__ {unsigned int max_channel; unsigned int max_id; unsigned int can_queue; int host_lock; scalar_t__ io_port; } ;
struct TYPE_8__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 scalar_t__ ABORTING ;
 int BN (unsigned int) ;
 int CMD_RESET ;
 int DID_RESET ;
 int FAILED ;
 void* FALSE ;
 scalar_t__ FREE ;
 TYPE_5__* HD (unsigned int) ;
 int HZ ;
 scalar_t__ IN_RESET ;
 int KERN_INFO ;
 scalar_t__ LOCKED ;
 int MAXLOOP ;
 scalar_t__ READY ;
 scalar_t__ REG_LCL_INTR ;
 int SUCCESS ;
 void* TRUE ;
 void* do_trace ;
 unsigned long jiffies ;
 int outb (int ,scalar_t__) ;
 int panic (char*,int ,unsigned int) ;
 int printk (char*,int ,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ) ;
 TYPE_4__** sh ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int udelay (long) ;
 int unmap_dma (unsigned int,unsigned int) ;
 scalar_t__ wait_on_busy (scalar_t__,int ) ;

__attribute__((used)) static int u14_34f_eh_host_reset(struct scsi_cmnd *SCarg) {
   unsigned int i, j, k, c, limit = 0;
   unsigned long time;
   int arg_done = FALSE;
   struct scsi_cmnd *SCpnt;

   j = ((struct hostdata *) SCarg->device->host->hostdata)->board_number;
   scmd_printk(KERN_INFO, SCarg, "reset, enter, pid %ld.\n", SCarg->serial_number);

   spin_lock_irq(sh[j]->host_lock);

   if (SCarg->host_scribble == ((void*)0))
      printk("%s: reset, pid %ld inactive.\n", BN(j), SCarg->serial_number);

   if (HD(j)->in_reset) {
      printk("%s: reset, exit, already in reset.\n", BN(j));
      spin_unlock_irq(sh[j]->host_lock);
      return FAILED;
      }

   if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
      printk("%s: reset, exit, timeout error.\n", BN(j));
      spin_unlock_irq(sh[j]->host_lock);
      return FAILED;
      }

   HD(j)->retries = 0;

   for (c = 0; c <= sh[j]->max_channel; c++)
      for (k = 0; k < sh[j]->max_id; k++) {
         HD(j)->target_redo[k][c] = TRUE;
         HD(j)->target_to[k][c] = 0;
         }

   for (i = 0; i < sh[j]->can_queue; i++) {

      if (HD(j)->cp_stat[i] == FREE) continue;

      if (HD(j)->cp_stat[i] == LOCKED) {
         HD(j)->cp_stat[i] = FREE;
         printk("%s: reset, locked mbox %d forced free.\n", BN(j), i);
         continue;
         }

      if (!(SCpnt = HD(j)->cp[i].SCpnt))
         panic("%s: reset, mbox %d, SCpnt == NULL.\n", BN(j), i);

      if (HD(j)->cp_stat[i] == READY || HD(j)->cp_stat[i] == ABORTING) {
         HD(j)->cp_stat[i] = ABORTING;
         printk("%s: reset, mbox %d aborting, pid %ld.\n",
                BN(j), i, SCpnt->serial_number);
         }

      else {
         HD(j)->cp_stat[i] = IN_RESET;
         printk("%s: reset, mbox %d in reset, pid %ld.\n",
                BN(j), i, SCpnt->serial_number);
         }

      if (SCpnt->host_scribble == ((void*)0))
         panic("%s: reset, mbox %d, garbled SCpnt.\n", BN(j), i);

      if (*(unsigned int *)SCpnt->host_scribble != i)
         panic("%s: reset, mbox %d, index mismatch.\n", BN(j), i);

      if (SCpnt->scsi_done == ((void*)0))
         panic("%s: reset, mbox %d, SCpnt->scsi_done == NULL.\n", BN(j), i);

      if (SCpnt == SCarg) arg_done = TRUE;
      }

   if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
      printk("%s: reset, cannot reset, timeout error.\n", BN(j));
      spin_unlock_irq(sh[j]->host_lock);
      return FAILED;
      }

   outb(CMD_RESET, sh[j]->io_port + REG_LCL_INTR);
   printk("%s: reset, board reset done, enabling interrupts.\n", BN(j));





   HD(j)->in_reset = TRUE;

   spin_unlock_irq(sh[j]->host_lock);
   time = jiffies;
   while ((jiffies - time) < (10 * HZ) && limit++ < 200000) udelay(100L);
   spin_lock_irq(sh[j]->host_lock);

   printk("%s: reset, interrupts disabled, loops %d.\n", BN(j), limit);

   for (i = 0; i < sh[j]->can_queue; i++) {

      if (HD(j)->cp_stat[i] == IN_RESET) {
         SCpnt = HD(j)->cp[i].SCpnt;
         unmap_dma(i, j);
         SCpnt->result = DID_RESET << 16;
         SCpnt->host_scribble = ((void*)0);


         HD(j)->cp_stat[i] = LOCKED;

         printk("%s, reset, mbox %d locked, DID_RESET, pid %ld done.\n",
                BN(j), i, SCpnt->serial_number);
         }

      else if (HD(j)->cp_stat[i] == ABORTING) {
         SCpnt = HD(j)->cp[i].SCpnt;
         unmap_dma(i, j);
         SCpnt->result = DID_RESET << 16;
         SCpnt->host_scribble = ((void*)0);


         HD(j)->cp_stat[i] = FREE;

         printk("%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\n",
                BN(j), i, SCpnt->serial_number);
         }

      else


         continue;

      SCpnt->scsi_done(SCpnt);
      }

   HD(j)->in_reset = FALSE;
   do_trace = FALSE;

   if (arg_done) printk("%s: reset, exit, pid %ld done.\n", BN(j), SCarg->serial_number);
   else printk("%s: reset, exit.\n", BN(j));

   spin_unlock_irq(sh[j]->host_lock);
   return SUCCESS;
}
