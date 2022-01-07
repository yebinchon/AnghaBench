
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_event_struct {int dummy; } ;
struct srp_cmd {int dummy; } ;
struct scsi_cmnd {int sc_data_direction; int device; } ;
struct device {int dummy; } ;






 int KERN_ERR ;
 int map_sg_data (struct scsi_cmnd*,struct srp_event_struct*,struct srp_cmd*,struct device*) ;
 int sdev_printk (int ,int ,char*,...) ;

__attribute__((used)) static int map_data_for_srp_cmd(struct scsi_cmnd *cmd,
    struct srp_event_struct *evt_struct,
    struct srp_cmd *srp_cmd, struct device *dev)
{
 switch (cmd->sc_data_direction) {
 case 130:
 case 128:
  break;
 case 129:
  return 1;
 case 131:
  sdev_printk(KERN_ERR, cmd->device,
       "Can't map DMA_BIDIRECTIONAL to read/write\n");
  return 0;
 default:
  sdev_printk(KERN_ERR, cmd->device,
       "Unknown data direction 0x%02x; can't map!\n",
       cmd->sc_data_direction);
  return 0;
 }

 return map_sg_data(cmd, evt_struct, srp_cmd, dev);
}
