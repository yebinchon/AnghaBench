
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;unsigned char* host_scribble; int cmd_len; unsigned char* cmnd; int sc_data_direction; TYPE_7__* device; } ;
struct hpsa_scsi_dev_t {unsigned char* scsi3addr; } ;
struct ctlr_info {TYPE_6__* pdev; int lock; int lockup_detected; } ;
struct TYPE_11__ {int Direction; int Attribute; int Type; } ;
struct TYPE_12__ {unsigned char* CDB; int CDBLen; TYPE_4__ Type; scalar_t__ Timeout; } ;
struct TYPE_9__ {int lower; } ;
struct TYPE_8__ {unsigned char* LunAddrBytes; } ;
struct TYPE_10__ {TYPE_2__ Tag; TYPE_1__ LUN; scalar_t__ ReplyQueue; } ;
struct CommandList {int cmdindex; TYPE_5__ Request; TYPE_3__ Header; struct scsi_cmnd* scsi_cmd; int cmd_type; } ;
typedef int scsi3addr ;
struct TYPE_14__ {struct hpsa_scsi_dev_t* hostdata; } ;
struct TYPE_13__ {int dev; } ;


 int ATTR_SIMPLE ;
 int BUG () ;
 int BUG_ON (int) ;
 int CMD_SCSI ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DIRECT_LOOKUP_BIT ;
 int DIRECT_LOOKUP_SHIFT ;




 int SCSI_MLQUEUE_HOST_BUSY ;
 int TYPE_CMD ;
 int XFER_NONE ;
 int XFER_READ ;
 int XFER_RSVD ;
 int XFER_WRITE ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int dev_err (int *,char*,...) ;
 int enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*) ;
 scalar_t__ hpsa_scatter_gather (struct ctlr_info*,struct CommandList*,struct scsi_cmnd*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 struct ctlr_info* sdev_to_hba (TYPE_7__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hpsa_scsi_queue_command(struct scsi_cmnd *cmd,
 void (*done)(struct scsi_cmnd *))
{
 struct ctlr_info *h;
 struct hpsa_scsi_dev_t *dev;
 unsigned char scsi3addr[8];
 struct CommandList *c;
 unsigned long flags;


 h = sdev_to_hba(cmd->device);
 dev = cmd->device->hostdata;
 if (!dev) {
  cmd->result = DID_NO_CONNECT << 16;
  done(cmd);
  return 0;
 }
 memcpy(scsi3addr, dev->scsi3addr, sizeof(scsi3addr));

 spin_lock_irqsave(&h->lock, flags);
 if (unlikely(h->lockup_detected)) {
  spin_unlock_irqrestore(&h->lock, flags);
  cmd->result = DID_ERROR << 16;
  done(cmd);
  return 0;
 }
 spin_unlock_irqrestore(&h->lock, flags);
 c = cmd_alloc(h);
 if (c == ((void*)0)) {
  dev_err(&h->pdev->dev, "cmd_alloc returned NULL!\n");
  return SCSI_MLQUEUE_HOST_BUSY;
 }



 cmd->scsi_done = done;


 cmd->host_scribble = (unsigned char *) c;

 c->cmd_type = CMD_SCSI;
 c->scsi_cmd = cmd;
 c->Header.ReplyQueue = 0;
 memcpy(&c->Header.LUN.LunAddrBytes[0], &scsi3addr[0], 8);
 c->Header.Tag.lower = (c->cmdindex << DIRECT_LOOKUP_SHIFT);
 c->Header.Tag.lower |= DIRECT_LOOKUP_BIT;



 c->Request.Timeout = 0;
 memset(c->Request.CDB, 0, sizeof(c->Request.CDB));
 BUG_ON(cmd->cmd_len > sizeof(c->Request.CDB));
 c->Request.CDBLen = cmd->cmd_len;
 memcpy(c->Request.CDB, cmd->cmnd, cmd->cmd_len);
 c->Request.Type.Type = TYPE_CMD;
 c->Request.Type.Attribute = ATTR_SIMPLE;
 switch (cmd->sc_data_direction) {
 case 128:
  c->Request.Type.Direction = XFER_WRITE;
  break;
 case 130:
  c->Request.Type.Direction = XFER_READ;
  break;
 case 129:
  c->Request.Type.Direction = XFER_NONE;
  break;
 case 131:





  c->Request.Type.Direction = XFER_RSVD;
  break;

 default:
  dev_err(&h->pdev->dev, "unknown data direction: %d\n",
   cmd->sc_data_direction);
  BUG();
  break;
 }

 if (hpsa_scatter_gather(h, c, cmd) < 0) {
  cmd_free(h, c);
  return SCSI_MLQUEUE_HOST_BUSY;
 }
 enqueue_cmd_and_start_io(h, c);

 return 0;
}
