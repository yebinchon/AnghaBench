
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int size; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct TYPE_4__ {int chipset; } ;


 int ENODEV ;
 int NV_MEM_TYPE_STOLEN ;
 int PCI_DEVFN (int ,int) ;
 TYPE_2__* nv_device (struct nouveau_fb*) ;
 int nv_fatal (struct nouveau_fb*,char*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static int
nv1a_fb_vram_init(struct nouveau_fb *pfb)
{
 struct pci_dev *bridge;
 u32 mem, mib;

 bridge = pci_get_bus_and_slot(0, PCI_DEVFN(0, 1));
 if (!bridge) {
  nv_fatal(pfb, "no bridge device\n");
  return -ENODEV;
 }

 if (nv_device(pfb)->chipset == 0x1a) {
  pci_read_config_dword(bridge, 0x7c, &mem);
  mib = ((mem >> 6) & 31) + 1;
 } else {
  pci_read_config_dword(bridge, 0x84, &mem);
  mib = ((mem >> 4) & 127) + 1;
 }

 pfb->ram.type = NV_MEM_TYPE_STOLEN;
 pfb->ram.size = mib * 1024 * 1024;
 return 0;
}
