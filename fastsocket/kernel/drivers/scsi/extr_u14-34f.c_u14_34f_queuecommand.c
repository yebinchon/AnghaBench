
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {unsigned char* host_scribble; void (* scsi_done ) (struct scsi_cmnd*) ;int serial_number; int request; TYPE_3__* device; int cmd_len; int cmnd; } ;
struct mscp {unsigned int cpp_index; int cp_dma_addr; int cdb; int cdb_len; struct scsi_cmnd* SCpnt; int lun; int target; int channel; int opcode; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_8__ {int last_cp_used; scalar_t__* cp_stat; struct mscp* cp; } ;
struct TYPE_7__ {int queue_depth; int type; int lun; int id; int channel; TYPE_1__* host; } ;
struct TYPE_6__ {unsigned int can_queue; scalar_t__ io_port; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int BN (unsigned int) ;
 int CMD_OGM_INTR ;
 scalar_t__ CP_TAIL_SIZE ;
 int FALSE ;
 scalar_t__ FREE ;
 int H2DEV (int ) ;
 TYPE_4__* HD (unsigned int) ;
 scalar_t__ IN_USE ;
 int KERN_INFO ;
 int MAXLOOP ;
 int OP_SCSI ;
 scalar_t__ READY ;
 scalar_t__ REG_LCL_INTR ;
 scalar_t__ REG_OGM ;
 scalar_t__ TLDEV (int ) ;
 int blk_rq_pos (int ) ;
 scalar_t__ do_trace ;
 int flush_dev (TYPE_3__*,int ,unsigned int,int ) ;
 scalar_t__ linked_comm ;
 int map_dma (unsigned int,unsigned int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct mscp*,int ,scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int panic (char*,int ,int ,struct scsi_cmnd*) ;
 int printk (char*,int ,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ) ;
 int scsi_to_dev_dir (unsigned int,unsigned int) ;
 TYPE_2__** sh ;
 int unmap_dma (unsigned int,unsigned int) ;
 scalar_t__ wait_on_busy (scalar_t__,int ) ;

__attribute__((used)) static int u14_34f_queuecommand(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *)) {
   unsigned int i, j, k;
   struct mscp *cpp;


   j = ((struct hostdata *) SCpnt->device->host->hostdata)->board_number;

   if (SCpnt->host_scribble)
      panic("%s: qcomm, pid %ld, SCpnt %p already active.\n",
            BN(j), SCpnt->serial_number, SCpnt);



   i = HD(j)->last_cp_used + 1;

   for (k = 0; k < sh[j]->can_queue; k++, i++) {

      if (i >= sh[j]->can_queue) i = 0;

      if (HD(j)->cp_stat[i] == FREE) {
         HD(j)->last_cp_used = i;
         break;
         }
      }

   if (k == sh[j]->can_queue) {
      printk("%s: qcomm, no free mailbox.\n", BN(j));
      return 1;
      }


   cpp = &HD(j)->cp[i];

   memset(cpp, 0, sizeof(struct mscp) - CP_TAIL_SIZE);
   SCpnt->scsi_done = done;
   cpp->cpp_index = i;
   SCpnt->host_scribble = (unsigned char *) &cpp->cpp_index;

   if (do_trace) printk("%s: qcomm, mbox %d, target %d.%d:%d, pid %ld.\n",
                        BN(j), i, SCpnt->device->channel, SCpnt->device->id,
                        SCpnt->device->lun, SCpnt->serial_number);

   cpp->opcode = OP_SCSI;
   cpp->channel = SCpnt->device->channel;
   cpp->target = SCpnt->device->id;
   cpp->lun = SCpnt->device->lun;
   cpp->SCpnt = SCpnt;
   cpp->cdb_len = SCpnt->cmd_len;
   memcpy(cpp->cdb, SCpnt->cmnd, SCpnt->cmd_len);


   scsi_to_dev_dir(i, j);


   map_dma(i, j);

   if (linked_comm && SCpnt->device->queue_depth > 2
                                     && TLDEV(SCpnt->device->type)) {
      HD(j)->cp_stat[i] = READY;
      flush_dev(SCpnt->device, blk_rq_pos(SCpnt->request), j, FALSE);
      return 0;
      }

   if (wait_on_busy(sh[j]->io_port, MAXLOOP)) {
      unmap_dma(i, j);
      SCpnt->host_scribble = ((void*)0);
      scmd_printk(KERN_INFO, SCpnt,
        "qcomm, pid %ld, adapter busy.\n", SCpnt->serial_number);
      return 1;
      }


   outl(H2DEV(cpp->cp_dma_addr), sh[j]->io_port + REG_OGM);


   outb(CMD_OGM_INTR, sh[j]->io_port + REG_LCL_INTR);

   HD(j)->cp_stat[i] = IN_USE;
   return 0;
}
