
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


 int USBCTL_DISCONN_OTHER ;
 int USBCTL_DISCONN_THIS ;
 int USBCTL_ENABLE_DEFAULTS ;
 int USBCTL_ENABLE_LANG ;
 int USBCTL_ENABLE_MFGR ;
 int USBCTL_ENABLE_PROD ;
 int USBCTL_ENABLE_SERIAL ;
 int USBCTL_FLUSH_OTHER ;
 int USBCTL_FLUSH_THIS ;
 int USBCTL_WRITABLE_MASK ;
 int devdbg (struct usbnet*,char*,int ,int ,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,int) ;
 int netif_msg_link (struct usbnet*) ;

__attribute__((used)) static inline void nc_dump_usbctl(struct usbnet *dev, u16 usbctl)
{
 if (!netif_msg_link(dev))
  return;
 devdbg(dev, "net1080 %s-%s usbctl 0x%x:%s%s%s%s%s;"
   " this%s%s;"
   " other%s%s; r/o 0x%x",
  dev->udev->bus->bus_name, dev->udev->devpath,
  usbctl,
  (usbctl & USBCTL_ENABLE_LANG) ? " lang" : "",
  (usbctl & USBCTL_ENABLE_MFGR) ? " mfgr" : "",
  (usbctl & USBCTL_ENABLE_PROD) ? " prod" : "",
  (usbctl & USBCTL_ENABLE_SERIAL) ? " serial" : "",
  (usbctl & USBCTL_ENABLE_DEFAULTS) ? " defaults" : "",

  (usbctl & USBCTL_FLUSH_OTHER) ? " FLUSH" : "",
  (usbctl & USBCTL_DISCONN_OTHER) ? " DIS" : "",
  (usbctl & USBCTL_FLUSH_THIS) ? " FLUSH" : "",
  (usbctl & USBCTL_DISCONN_THIS) ? " DIS" : "",
  usbctl & ~USBCTL_WRITABLE_MASK
  );
}
