
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_2__* udev; } ;
struct TYPE_4__ {int devpath; TYPE_1__* bus; } ;
struct TYPE_3__ {int bus_name; } ;


 int TTL_OTHER (int ) ;
 int TTL_THIS (int ) ;
 int devdbg (struct usbnet*,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ netif_msg_link (struct usbnet*) ;

__attribute__((used)) static inline void nc_dump_ttl(struct usbnet *dev, u16 ttl)
{
 if (netif_msg_link(dev))
  devdbg(dev, "net1080 %s-%s ttl 0x%x this = %d, other = %d",
   dev->udev->bus->bus_name, dev->udev->devpath,
   ttl, TTL_THIS(ttl), TTL_OTHER(ttl));
}
