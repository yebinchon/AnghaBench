
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int sense_buffer; int serial_number; } ;
struct TYPE_4__ {int tcntxt; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct i2o_message {int * body; TYPE_2__ u; } ;
struct i2o_controller {TYPE_3__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 struct scsi_cmnd* i2o_cntxt_list_get (struct i2o_controller*,int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 int min (int ,int) ;
 int osm_debug (char*,int ) ;
 int osm_err (char*,...) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2o_scsi_reply(struct i2o_controller *c, u32 m,
     struct i2o_message *msg)
{
 struct scsi_cmnd *cmd;
 u32 error;
 struct device *dev;

 cmd = i2o_cntxt_list_get(c, le32_to_cpu(msg->u.s.tcntxt));
 if (unlikely(!cmd)) {
  osm_err("NULL reply received!\n");
  return -1;
 }





 error = le32_to_cpu(msg->body[0]);

 osm_debug("Completed %ld\n", cmd->serial_number);

 cmd->result = error & 0xff;




 if (cmd->result)
  memcpy(cmd->sense_buffer, &msg->body[3],
         min(SCSI_SENSE_BUFFERSIZE, 40));


 if ((error >> 8) & 0xff)
  osm_err("SCSI error %08x\n", error);

 dev = &c->pdev->dev;

 scsi_dma_unmap(cmd);

 cmd->scsi_done(cmd);

 return 1;
}
