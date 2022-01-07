
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmComResHWDescr {int dummy; } ;
struct TYPE_2__ {int dwHostHibernatMemRegionSize; int dwHostHibernatMemRegion; int dwHostMemoryRegionSize; int dwHostMemoryRegion; int dwDeviceRegistersLocation; int bCapabilities; int dwClockUpdateRes; int dwClockFrequency; int bcdSpecVersion; int bDescriptorSubtype; int bDescriptorType; int bLength; } ;
struct saa7164_dev {TYPE_1__ hwdesc; } ;


 int dprintk (int,char*,TYPE_1__*,...) ;

__attribute__((used)) static void saa7164_dump_hwdesc(struct saa7164_dev *dev)
{
 dprintk(1, "@0x%p hwdesc sizeof(struct tmComResHWDescr) = %d bytes\n",
  &dev->hwdesc, (u32)sizeof(struct tmComResHWDescr));

 dprintk(1, " .bLength = 0x%x\n", dev->hwdesc.bLength);
 dprintk(1, " .bDescriptorType = 0x%x\n", dev->hwdesc.bDescriptorType);
 dprintk(1, " .bDescriptorSubtype = 0x%x\n",
  dev->hwdesc.bDescriptorSubtype);

 dprintk(1, " .bcdSpecVersion = 0x%x\n", dev->hwdesc.bcdSpecVersion);
 dprintk(1, " .dwClockFrequency = 0x%x\n", dev->hwdesc.dwClockFrequency);
 dprintk(1, " .dwClockUpdateRes = 0x%x\n", dev->hwdesc.dwClockUpdateRes);
 dprintk(1, " .bCapabilities = 0x%x\n", dev->hwdesc.bCapabilities);
 dprintk(1, " .dwDeviceRegistersLocation = 0x%x\n",
  dev->hwdesc.dwDeviceRegistersLocation);

 dprintk(1, " .dwHostMemoryRegion = 0x%x\n",
  dev->hwdesc.dwHostMemoryRegion);

 dprintk(1, " .dwHostMemoryRegionSize = 0x%x\n",
  dev->hwdesc.dwHostMemoryRegionSize);

 dprintk(1, " .dwHostHibernatMemRegion = 0x%x\n",
  dev->hwdesc.dwHostHibernatMemRegion);

 dprintk(1, " .dwHostHibernatMemRegionSize = 0x%x\n",
  dev->hwdesc.dwHostHibernatMemRegionSize);
}
