
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct bcm5974_config {scalar_t__ ansi; scalar_t__ iso; scalar_t__ jis; } ;


 struct bcm5974_config const* bcm5974_config_table ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static const struct bcm5974_config *bcm5974_get_config(struct usb_device *udev)
{
 u16 id = le16_to_cpu(udev->descriptor.idProduct);
 const struct bcm5974_config *cfg;

 for (cfg = bcm5974_config_table; cfg->ansi; ++cfg)
  if (cfg->ansi == id || cfg->iso == id || cfg->jis == id)
   return cfg;

 return bcm5974_config_table;
}
