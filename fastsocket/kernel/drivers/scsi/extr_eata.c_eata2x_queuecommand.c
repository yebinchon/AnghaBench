
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {unsigned char* host_scribble; void (* scsi_done ) (struct scsi_cmnd*) ;int serial_number; int request; TYPE_1__* device; int cmd_len; int cmnd; } ;
struct mscp {unsigned int cpp_index; int reqsen; int dispri; int hbaci; int one; int cp_dma_addr; int cdb; struct scsi_cmnd* SCpnt; int lun; int target; int channel; int sp_dma_addr; } ;
struct hostdata {int last_cp_used; scalar_t__* cp_stat; int sp_dma_addr; struct mscp* cp; int board_name; } ;
struct Scsi_Host {unsigned int can_queue; int io_port; scalar_t__ hostdata; } ;
struct TYPE_2__ {scalar_t__ type; int queue_depth; int lun; int id; int channel; struct Scsi_Host* host; } ;


 scalar_t__ CP_TAIL_SIZE ;
 scalar_t__ FREE ;
 int H2DEV (int ) ;
 scalar_t__ IN_USE ;
 int KERN_INFO ;
 scalar_t__ READY ;
 int SEND_CP_DMA ;
 scalar_t__ TLDEV (scalar_t__) ;
 scalar_t__ TYPE_TAPE ;
 int blk_rq_pos (int ) ;
 scalar_t__ do_dma (int ,int ,int ) ;
 scalar_t__ do_trace ;
 int flush_dev (TYPE_1__*,int ,struct hostdata*,int ) ;
 scalar_t__ linked_comm ;
 int map_dma (unsigned int,struct hostdata*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct mscp*,int ,scalar_t__) ;
 int panic (char*,int ,int ,struct scsi_cmnd*) ;
 int printk (char*,int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,unsigned int,...) ;
 int scsi_to_dev_dir (unsigned int,struct hostdata*) ;
 int unmap_dma (unsigned int,struct hostdata*) ;

__attribute__((used)) static int eata2x_queuecommand(struct scsi_cmnd *SCpnt,
          void (*done) (struct scsi_cmnd *))
{
 struct Scsi_Host *shost = SCpnt->device->host;
 struct hostdata *ha = (struct hostdata *)shost->hostdata;
 unsigned int i, k;
 struct mscp *cpp;

 if (SCpnt->host_scribble)
  panic("%s: qcomm, pid %ld, SCpnt %p already active.\n",
        ha->board_name, SCpnt->serial_number, SCpnt);



 i = ha->last_cp_used + 1;

 for (k = 0; k < shost->can_queue; k++, i++) {
  if (i >= shost->can_queue)
   i = 0;
  if (ha->cp_stat[i] == FREE) {
   ha->last_cp_used = i;
   break;
  }
 }

 if (k == shost->can_queue) {
  printk("%s: qcomm, no free mailbox.\n", ha->board_name);
  return 1;
 }


 cpp = &ha->cp[i];

 memset(cpp, 0, sizeof(struct mscp) - CP_TAIL_SIZE);


 cpp->sp_dma_addr = H2DEV(ha->sp_dma_addr);

 SCpnt->scsi_done = done;
 cpp->cpp_index = i;
 SCpnt->host_scribble = (unsigned char *)&cpp->cpp_index;

 if (do_trace)
  scmd_printk(KERN_INFO, SCpnt,
   "qcomm, mbox %d, pid %ld.\n", i, SCpnt->serial_number);

 cpp->reqsen = 1;
 cpp->dispri = 1;




 cpp->one = 1;
 cpp->channel = SCpnt->device->channel;
 cpp->target = SCpnt->device->id;
 cpp->lun = SCpnt->device->lun;
 cpp->SCpnt = SCpnt;
 memcpy(cpp->cdb, SCpnt->cmnd, SCpnt->cmd_len);


 scsi_to_dev_dir(i, ha);


 map_dma(i, ha);

 if (linked_comm && SCpnt->device->queue_depth > 2
     && TLDEV(SCpnt->device->type)) {
  ha->cp_stat[i] = READY;
  flush_dev(SCpnt->device, blk_rq_pos(SCpnt->request), ha, 0);
  return 0;
 }


 if (do_dma(shost->io_port, cpp->cp_dma_addr, SEND_CP_DMA)) {
  unmap_dma(i, ha);
  SCpnt->host_scribble = ((void*)0);
  scmd_printk(KERN_INFO, SCpnt,
   "qcomm, pid %ld, adapter busy.\n", SCpnt->serial_number);
  return 1;
 }

 ha->cp_stat[i] = IN_USE;
 return 0;
}
