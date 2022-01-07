
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int serial_number; int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; TYPE_1__* device; } ;
struct hostdata {int in_reset; int** target_redo; scalar_t__* cp_stat; int board_name; TYPE_2__* cp; scalar_t__** target_to; scalar_t__ retries; } ;
struct Scsi_Host {unsigned int max_channel; unsigned int max_id; unsigned int can_queue; int host_lock; int io_port; scalar_t__ hostdata; } ;
struct TYPE_4__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 scalar_t__ ABORTING ;
 int DID_RESET ;
 int FAILED ;
 scalar_t__ FREE ;
 int HZ ;
 scalar_t__ IN_RESET ;
 int KERN_INFO ;
 scalar_t__ LOCKED ;
 int MAXLOOP ;
 scalar_t__ READY ;
 int RESET_PIO ;
 int SUCCESS ;
 scalar_t__ do_dma (int ,int ,int ) ;
 int do_trace ;
 unsigned int jiffies ;
 int panic (char*,int ,unsigned int) ;
 int printk (char*,int ,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int udelay (long) ;
 int unmap_dma (unsigned int,struct hostdata*) ;
 scalar_t__ wait_on_busy (int ,int ) ;

__attribute__((used)) static int eata2x_eh_host_reset(struct scsi_cmnd *SCarg)
{
 unsigned int i, time, k, c, limit = 0;
 int arg_done = 0;
 struct scsi_cmnd *SCpnt;
 struct Scsi_Host *shost = SCarg->device->host;
 struct hostdata *ha = (struct hostdata *)shost->hostdata;

 scmd_printk(KERN_INFO, SCarg,
  "reset, enter, pid %ld.\n", SCarg->serial_number);

 spin_lock_irq(shost->host_lock);

 if (SCarg->host_scribble == ((void*)0))
  printk("%s: reset, pid %ld inactive.\n", ha->board_name, SCarg->serial_number);

 if (ha->in_reset) {
  printk("%s: reset, exit, already in reset.\n", ha->board_name);
  spin_unlock_irq(shost->host_lock);
  return FAILED;
 }

 if (wait_on_busy(shost->io_port, MAXLOOP)) {
  printk("%s: reset, exit, timeout error.\n", ha->board_name);
  spin_unlock_irq(shost->host_lock);
  return FAILED;
 }

 ha->retries = 0;

 for (c = 0; c <= shost->max_channel; c++)
  for (k = 0; k < shost->max_id; k++) {
   ha->target_redo[k][c] = 1;
   ha->target_to[k][c] = 0;
  }

 for (i = 0; i < shost->can_queue; i++) {

  if (ha->cp_stat[i] == FREE)
   continue;

  if (ha->cp_stat[i] == LOCKED) {
   ha->cp_stat[i] = FREE;
   printk("%s: reset, locked mbox %d forced free.\n",
          ha->board_name, i);
   continue;
  }

  if (!(SCpnt = ha->cp[i].SCpnt))
   panic("%s: reset, mbox %d, SCpnt == NULL.\n", ha->board_name, i);

  if (ha->cp_stat[i] == READY || ha->cp_stat[i] == ABORTING) {
   ha->cp_stat[i] = ABORTING;
   printk("%s: reset, mbox %d aborting, pid %ld.\n",
          ha->board_name, i, SCpnt->serial_number);
  }

  else {
   ha->cp_stat[i] = IN_RESET;
   printk("%s: reset, mbox %d in reset, pid %ld.\n",
          ha->board_name, i, SCpnt->serial_number);
  }

  if (SCpnt->host_scribble == ((void*)0))
   panic("%s: reset, mbox %d, garbled SCpnt.\n", ha->board_name, i);

  if (*(unsigned int *)SCpnt->host_scribble != i)
   panic("%s: reset, mbox %d, index mismatch.\n", ha->board_name, i);

  if (SCpnt->scsi_done == ((void*)0))
   panic("%s: reset, mbox %d, SCpnt->scsi_done == NULL.\n",
         ha->board_name, i);

  if (SCpnt == SCarg)
   arg_done = 1;
 }

 if (do_dma(shost->io_port, 0, RESET_PIO)) {
  printk("%s: reset, cannot reset, timeout error.\n", ha->board_name);
  spin_unlock_irq(shost->host_lock);
  return FAILED;
 }

 printk("%s: reset, board reset done, enabling interrupts.\n", ha->board_name);





 ha->in_reset = 1;

 spin_unlock_irq(shost->host_lock);


 time = jiffies;
 while ((jiffies - time) < (10 * HZ) && limit++ < 200000)
  udelay(100L);

 spin_lock_irq(shost->host_lock);

 printk("%s: reset, interrupts disabled, loops %d.\n", ha->board_name, limit);

 for (i = 0; i < shost->can_queue; i++) {

  if (ha->cp_stat[i] == IN_RESET) {
   SCpnt = ha->cp[i].SCpnt;
   unmap_dma(i, ha);
   SCpnt->result = DID_RESET << 16;
   SCpnt->host_scribble = ((void*)0);


   ha->cp_stat[i] = LOCKED;

   printk
       ("%s, reset, mbox %d locked, DID_RESET, pid %ld done.\n",
        ha->board_name, i, SCpnt->serial_number);
  }

  else if (ha->cp_stat[i] == ABORTING) {
   SCpnt = ha->cp[i].SCpnt;
   unmap_dma(i, ha);
   SCpnt->result = DID_RESET << 16;
   SCpnt->host_scribble = ((void*)0);


   ha->cp_stat[i] = FREE;

   printk
       ("%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\n",
        ha->board_name, i, SCpnt->serial_number);
  }

  else

   continue;

  SCpnt->scsi_done(SCpnt);
 }

 ha->in_reset = 0;
 do_trace = 0;

 if (arg_done)
  printk("%s: reset, exit, pid %ld done.\n", ha->board_name, SCarg->serial_number);
 else
  printk("%s: reset, exit.\n", ha->board_name);

 spin_unlock_irq(shost->host_lock);
 return SUCCESS;
}
