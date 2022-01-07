
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct bnx2x_virtf {int devfn; int bus; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_is_pcie_pending (struct pci_dev*) ;
 struct bnx2x_virtf* bnx2x_vf_by_abs_fid (struct bnx2x*,int) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;

__attribute__((used)) static u8 bnx2x_vf_is_pcie_pending(struct bnx2x *bp, u8 abs_vfid)
{
 struct pci_dev *dev;
 struct bnx2x_virtf *vf = bnx2x_vf_by_abs_fid(bp, abs_vfid);

 if (!vf)
  return 0;

 dev = pci_get_bus_and_slot(vf->bus, vf->devfn);
 if (dev)
  return bnx2x_is_pcie_pending(dev);
 return 0;
}
