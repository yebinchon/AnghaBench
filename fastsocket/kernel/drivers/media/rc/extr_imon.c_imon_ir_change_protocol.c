
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rc_dev {int allowed_protos; struct imon_context* priv; } ;
struct imon_context {int rc_type; int pad_mouse; int usb_tx_buf; struct device* dev; } ;
struct device {int dummy; } ;
typedef int ir_proto_packet ;





 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int memcpy (int ,unsigned char**,int) ;
 int pad_stabilize ;
 int send_packet (struct imon_context*) ;

__attribute__((used)) static int imon_ir_change_protocol(struct rc_dev *rc, u64 rc_type)
{
 int retval;
 struct imon_context *ictx = rc->priv;
 struct device *dev = ictx->dev;
 unsigned char ir_proto_packet[] = {
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x86 };

 if (rc_type && !(rc_type & rc->allowed_protos))
  dev_warn(dev, "Looks like you're trying to use an IR protocol "
    "this device does not support\n");

 switch (rc_type) {
 case 129:
  dev_dbg(dev, "Configuring IR receiver for MCE protocol\n");
  ir_proto_packet[0] = 0x01;
  break;
 case 128:
 case 130:
  dev_dbg(dev, "Configuring IR receiver for iMON protocol\n");
  if (!pad_stabilize)
   dev_dbg(dev, "PAD stabilize functionality disabled\n");

  rc_type = 130;
  break;
 default:
  dev_warn(dev, "Unsupported IR protocol specified, overriding "
    "to iMON IR protocol\n");
  if (!pad_stabilize)
   dev_dbg(dev, "PAD stabilize functionality disabled\n");

  rc_type = 130;
  break;
 }

 memcpy(ictx->usb_tx_buf, &ir_proto_packet, sizeof(ir_proto_packet));

 retval = send_packet(ictx);
 if (retval)
  goto out;

 ictx->rc_type = rc_type;
 ictx->pad_mouse = 0;

out:
 return retval;
}
