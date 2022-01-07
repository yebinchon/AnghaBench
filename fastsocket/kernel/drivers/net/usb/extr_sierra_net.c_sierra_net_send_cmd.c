
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
struct sierra_net_data {int ifnum; } ;


 int ENODEV ;
 int USB_CDC_SEND_ENCAPSULATED_COMMAND ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int netdev_err (int ,char*,char const*,int) ;
 struct sierra_net_data* sierra_net_get_private (struct usbnet*) ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int) ;

__attribute__((used)) static int sierra_net_send_cmd(struct usbnet *dev,
  u8 *cmd, int cmdlen, const char * cmd_name)
{
 struct sierra_net_data *priv = sierra_net_get_private(dev);
 int status;

 status = usbnet_write_cmd(dev, USB_CDC_SEND_ENCAPSULATED_COMMAND,
      USB_DIR_OUT|USB_TYPE_CLASS|USB_RECIP_INTERFACE,
      0, priv->ifnum, cmd, cmdlen);

 if (status != cmdlen && status != -ENODEV)
  netdev_err(dev->net, "Submit %s failed %d\n", cmd_name, status);

 return status;
}
