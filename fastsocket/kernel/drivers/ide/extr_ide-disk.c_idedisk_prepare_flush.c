
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {TYPE_4__* queuedata; } ;
struct request {struct ide_cmd* special; int cmd_type; } ;
struct TYPE_6__ {int tf; } ;
struct TYPE_7__ {TYPE_2__ out; } ;
struct TYPE_5__ {int command; } ;
struct ide_cmd {struct request* rq; int protocol; int tf_flags; TYPE_3__ valid; TYPE_1__ tf; } ;
struct TYPE_8__ {unsigned long capacity64; int id; } ;
typedef TYPE_4__ ide_drive_t ;


 int ATA_CMD_FLUSH ;
 int ATA_CMD_FLUSH_EXT ;
 int ATA_PROT_NODATA ;
 int BUG_ON (int ) ;
 int GFP_ATOMIC ;
 int IDE_TFLAG_DYN ;
 int IDE_VALID_DEVICE ;
 int IDE_VALID_OUT_TF ;
 int REQ_TYPE_ATA_TASKFILE ;
 scalar_t__ ata_id_flush_ext_enabled (int ) ;
 struct ide_cmd* kmalloc (int,int ) ;
 int memset (struct ide_cmd*,int ,int) ;

__attribute__((used)) static void idedisk_prepare_flush(struct request_queue *q, struct request *rq)
{
 ide_drive_t *drive = q->queuedata;
 struct ide_cmd *cmd = kmalloc(sizeof(*cmd), GFP_ATOMIC);


 BUG_ON(cmd == ((void*)0));

 memset(cmd, 0, sizeof(*cmd));
 if (ata_id_flush_ext_enabled(drive->id) &&
     (drive->capacity64 >= (1UL << 28)))
  cmd->tf.command = ATA_CMD_FLUSH_EXT;
 else
  cmd->tf.command = ATA_CMD_FLUSH;
 cmd->valid.out.tf = IDE_VALID_OUT_TF | IDE_VALID_DEVICE;
 cmd->tf_flags = IDE_TFLAG_DYN;
 cmd->protocol = ATA_PROT_NODATA;

 rq->cmd_type = REQ_TYPE_ATA_TASKFILE;
 rq->special = cmd;
 cmd->rq = rq;
}
