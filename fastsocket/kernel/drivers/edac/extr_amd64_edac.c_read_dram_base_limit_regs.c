
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct cpuinfo_x86 {int x86; } ;
struct amd64_pvt {TYPE_3__* ranges; struct pci_dev* F1; } ;
struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_4__ {int lo; int hi; } ;
struct TYPE_6__ {TYPE_2__ lim; TYPE_1__ base; } ;


 scalar_t__ DRAM_BASE_HI ;
 scalar_t__ DRAM_BASE_LO ;
 scalar_t__ DRAM_LIMIT_HI ;
 scalar_t__ DRAM_LIMIT_LO ;
 scalar_t__ DRAM_LOCAL_NODE_LIM ;
 int GENMASK (int ,int) ;
 int PCI_DEVFN (scalar_t__,int) ;
 scalar_t__ WARN_ON (int) ;
 int amd64_read_pci_cfg (struct pci_dev*,scalar_t__,int*) ;
 struct cpuinfo_x86 boot_cpu_data ;
 scalar_t__ dram_dst_node (struct amd64_pvt*,unsigned int) ;
 int dram_rw (struct amd64_pvt*,unsigned int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;

__attribute__((used)) static void read_dram_base_limit_regs(struct amd64_pvt *pvt, unsigned range)
{
 struct cpuinfo_x86 *c = &boot_cpu_data;
 int off = range << 3;

 amd64_read_pci_cfg(pvt->F1, DRAM_BASE_LO + off, &pvt->ranges[range].base.lo);
 amd64_read_pci_cfg(pvt->F1, DRAM_LIMIT_LO + off, &pvt->ranges[range].lim.lo);

 if (c->x86 == 0xf)
  return;

 if (!dram_rw(pvt, range))
  return;

 amd64_read_pci_cfg(pvt->F1, DRAM_BASE_HI + off, &pvt->ranges[range].base.hi);
 amd64_read_pci_cfg(pvt->F1, DRAM_LIMIT_HI + off, &pvt->ranges[range].lim.hi);


 if (c->x86 == 0x15) {
  struct pci_dev *f1 = ((void*)0);
  u8 nid = dram_dst_node(pvt, range);
  u32 llim;

  f1 = pci_get_domain_bus_and_slot(0, 0, PCI_DEVFN(0x18 + nid, 1));
  if (WARN_ON(!f1))
   return;

  amd64_read_pci_cfg(f1, DRAM_LOCAL_NODE_LIM, &llim);

  pvt->ranges[range].lim.lo &= GENMASK(0, 15);


  pvt->ranges[range].lim.lo |= ((llim & 0x1fff) << 3 | 0x7) << 16;

  pvt->ranges[range].lim.hi &= GENMASK(0, 7);


  pvt->ranges[range].lim.hi |= llim >> 13;

  pci_dev_put(f1);
 }
}
