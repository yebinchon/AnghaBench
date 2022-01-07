
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {struct if_usb_card* card; } ;
struct if_usb_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;


 int BOOT_CMD_UPDATE_FW ;
 int if_usb_prog_firmware (struct if_usb_card*,char const*,int ) ;
 TYPE_1__* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t if_usb_firmware_set(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct lbs_private *priv = to_net_dev(dev)->ml_priv;
 struct if_usb_card *cardp = priv->card;
 int ret;

 ret = if_usb_prog_firmware(cardp, buf, BOOT_CMD_UPDATE_FW);
 if (ret == 0)
  return count;

 return ret;
}
