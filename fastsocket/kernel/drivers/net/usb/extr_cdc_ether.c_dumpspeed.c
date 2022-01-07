
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
typedef int __le32 ;


 int __le32_to_cpu (int ) ;
 int devinfo (struct usbnet*,char*,int,int) ;
 scalar_t__ netif_msg_timer (struct usbnet*) ;

__attribute__((used)) static void dumpspeed(struct usbnet *dev, __le32 *speeds)
{
 if (netif_msg_timer(dev))
  devinfo(dev, "link speeds: %u kbps up, %u kbps down",
   __le32_to_cpu(speeds[0]) / 1000,
  __le32_to_cpu(speeds[1]) / 1000);
}
