
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ vendor; int device; } ;
struct device {int dummy; } ;
struct cpuinfo_x86 {int x86_model; int x86_mask; } ;


 int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int dev_warn (struct device*,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;
 int rdmsr_safe_on_cpu (int,int,int*,int*) ;

__attribute__((used)) static int adjust_tjmax(struct cpuinfo_x86 *c, u32 id, struct device *dev)
{


 int tjmax = 100000;
 int tjmax_ee = 85000;
 int usemsr_ee = 1;
 int err;
 u32 eax, edx;
 struct pci_dev *host_bridge;



 if (c->x86_model == 0xf && c->x86_mask < 4)
  usemsr_ee = 0;



 if (c->x86_model == 0x1c) {
  usemsr_ee = 0;

  host_bridge = pci_get_bus_and_slot(0, PCI_DEVFN(0, 0));

  if (host_bridge && host_bridge->vendor == PCI_VENDOR_ID_INTEL
      && (host_bridge->device == 0xa000
      || host_bridge->device == 0xa010))
   tjmax = 100000;
  else
   tjmax = 90000;

  pci_dev_put(host_bridge);
 }

 if (c->x86_model > 0xe && usemsr_ee) {
  u8 platform_id;






  err = rdmsr_safe_on_cpu(id, 0x17, &eax, &edx);
  if (err) {
   dev_warn(dev,
     "Unable to access MSR 0x17, assuming desktop"
     " CPU\n");
   usemsr_ee = 0;
  } else if (c->x86_model < 0x17 && !(eax & 0x10000000)) {





   usemsr_ee = 0;
  } else {

   platform_id = (edx >> 18) & 0x7;





   if (c->x86_model == 0x17 &&
       (platform_id == 5 || platform_id == 7)) {




    tjmax_ee = 90000;
    tjmax = 105000;
   }
  }
 }

 if (usemsr_ee) {
  err = rdmsr_safe_on_cpu(id, 0xee, &eax, &edx);
  if (err) {
   dev_warn(dev,
     "Unable to access MSR 0xEE, for Tjmax, left"
     " at default\n");
  } else if (eax & 0x40000000) {
   tjmax = tjmax_ee;
  }
 } else if (tjmax == 100000) {




  dev_warn(dev, "Using relative temperature scale!\n");
 }

 return tjmax;
}
