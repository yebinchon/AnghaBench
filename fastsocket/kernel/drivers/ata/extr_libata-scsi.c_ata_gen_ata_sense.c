
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct scsi_cmnd {unsigned char* sense_buffer; int result; } ;
struct ata_taskfile {int command; int feature; } ;
struct ata_queued_cmd {struct ata_taskfile result_tf; TYPE_2__* ap; scalar_t__ err_mask; struct scsi_cmnd* scsicmd; struct ata_device* dev; } ;
struct ata_device {int dummy; } ;
struct TYPE_4__ {int print_id; TYPE_1__* ops; } ;
struct TYPE_3__ {int * error_handler; } ;


 int ATA_BUSY ;
 int ATA_DF ;
 int ATA_DRQ ;
 int ATA_ERR ;
 int DRIVER_SENSE ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_SENSE_BUFFERSIZE ;
 int ata_tf_read_block (struct ata_taskfile*,struct ata_device*) ;
 int ata_to_sense_error (int ,int,int ,unsigned char*,unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int ) ;

__attribute__((used)) static void ata_gen_ata_sense(struct ata_queued_cmd *qc)
{
 struct ata_device *dev = qc->dev;
 struct scsi_cmnd *cmd = qc->scsicmd;
 struct ata_taskfile *tf = &qc->result_tf;
 unsigned char *sb = cmd->sense_buffer;
 unsigned char *desc = sb + 8;
 int verbose = qc->ap->ops->error_handler == ((void*)0);
 u64 block;

 memset(sb, 0, SCSI_SENSE_BUFFERSIZE);

 cmd->result = (DRIVER_SENSE << 24) | SAM_STAT_CHECK_CONDITION;


 sb[0] = 0x72;




 if (qc->err_mask ||
     tf->command & (ATA_BUSY | ATA_DF | ATA_ERR | ATA_DRQ)) {
  ata_to_sense_error(qc->ap->print_id, tf->command, tf->feature,
       &sb[1], &sb[2], &sb[3], verbose);
  sb[1] &= 0x0f;
 }

 block = ata_tf_read_block(&qc->result_tf, dev);


 sb[7] = 12;
 desc[0] = 0x00;
 desc[1] = 10;

 desc[2] |= 0x80;
 desc[6] = block >> 40;
 desc[7] = block >> 32;
 desc[8] = block >> 24;
 desc[9] = block >> 16;
 desc[10] = block >> 8;
 desc[11] = block;
}
