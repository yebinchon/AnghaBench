
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct at76_command {int data; int size; scalar_t__ reserved; int cmd; } ;


 int DBG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int at76_dbg_dump (int ,struct at76_command*,int,char*,int ,int ) ;
 int at76_get_cmd_string (int ) ;
 int cpu_to_le16 (int) ;
 int kfree (struct at76_command*) ;
 struct at76_command* kmalloc (int,int ) ;
 int memcpy (int ,void*,int) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,struct at76_command*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int at76_set_card_command(struct usb_device *udev, u8 cmd, void *buf,
     int buf_size)
{
 int ret;
 struct at76_command *cmd_buf = kmalloc(sizeof(struct at76_command) +
            buf_size, GFP_KERNEL);

 if (!cmd_buf)
  return -ENOMEM;

 cmd_buf->cmd = cmd;
 cmd_buf->reserved = 0;
 cmd_buf->size = cpu_to_le16(buf_size);
 memcpy(cmd_buf->data, buf, buf_size);

 at76_dbg_dump(DBG_CMD, cmd_buf, sizeof(struct at76_command) + buf_size,
        "issuing command %s (0x%02x)",
        at76_get_cmd_string(cmd), cmd);

 ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x0e,
         USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
         0, 0, cmd_buf,
         sizeof(struct at76_command) + buf_size,
         USB_CTRL_GET_TIMEOUT);
 kfree(cmd_buf);
 return ret;
}
