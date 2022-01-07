
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qib_devdata {struct pci_dev* pcidev; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ parent; struct pci_dev* self; } ;


 int PCI_EXP_DEVCAP ;
 int PCI_EXP_DEVCAP_PAYLOAD ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PCI_EXP_DEVCTL_READRQ ;
 int fld2val (int,int) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 int qib_devinfo (struct pci_dev*,char*) ;
 int qib_pcie_caps ;
 int val2fld (int,int) ;

__attribute__((used)) static int qib_tune_pcie_caps(struct qib_devdata *dd)
{
 int ret = 1;
 struct pci_dev *parent;
 u16 pcaps, pctl, ecaps, ectl;
 int rc_sup, ep_sup;
 int rc_cur, ep_cur;


 parent = dd->pcidev->bus->self;
 if (parent->bus->parent) {
  qib_devinfo(dd->pcidev, "Parent not root\n");
  goto bail;
 }

 if (!pci_is_pcie(parent) || !pci_is_pcie(dd->pcidev))
  goto bail;
 pcie_capability_read_word(parent, PCI_EXP_DEVCAP, &pcaps);
 pcie_capability_read_word(parent, PCI_EXP_DEVCTL, &pctl);

 pcie_capability_read_word(dd->pcidev, PCI_EXP_DEVCAP, &ecaps);
 pcie_capability_read_word(dd->pcidev, PCI_EXP_DEVCTL, &ectl);

 ret = 0;

 rc_sup = fld2val(pcaps, PCI_EXP_DEVCAP_PAYLOAD);
 ep_sup = fld2val(ecaps, PCI_EXP_DEVCAP_PAYLOAD);
 if (rc_sup > ep_sup)
  rc_sup = ep_sup;

 rc_cur = fld2val(pctl, PCI_EXP_DEVCTL_PAYLOAD);
 ep_cur = fld2val(ectl, PCI_EXP_DEVCTL_PAYLOAD);


 if (rc_sup > (qib_pcie_caps & 7))
  rc_sup = qib_pcie_caps & 7;

 if (rc_sup > rc_cur) {
  rc_cur = rc_sup;
  pctl = (pctl & ~PCI_EXP_DEVCTL_PAYLOAD) |
   val2fld(rc_cur, PCI_EXP_DEVCTL_PAYLOAD);
  pcie_capability_write_word(parent, PCI_EXP_DEVCTL, pctl);
 }

 if (rc_sup > ep_cur) {
  ep_cur = rc_sup;
  ectl = (ectl & ~PCI_EXP_DEVCTL_PAYLOAD) |
   val2fld(ep_cur, PCI_EXP_DEVCTL_PAYLOAD);
  pcie_capability_write_word(dd->pcidev, PCI_EXP_DEVCTL, ectl);
 }






 rc_sup = 5;
 if (rc_sup > ((qib_pcie_caps >> 4) & 7))
  rc_sup = (qib_pcie_caps >> 4) & 7;
 rc_cur = fld2val(pctl, PCI_EXP_DEVCTL_READRQ);
 ep_cur = fld2val(ectl, PCI_EXP_DEVCTL_READRQ);

 if (rc_sup > rc_cur) {
  rc_cur = rc_sup;
  pctl = (pctl & ~PCI_EXP_DEVCTL_READRQ) |
   val2fld(rc_cur, PCI_EXP_DEVCTL_READRQ);
  pcie_capability_write_word(parent, PCI_EXP_DEVCTL, pctl);
 }
 if (rc_sup > ep_cur) {
  ep_cur = rc_sup;
  ectl = (ectl & ~PCI_EXP_DEVCTL_READRQ) |
   val2fld(ep_cur, PCI_EXP_DEVCTL_READRQ);
  pcie_capability_write_word(dd->pcidev, PCI_EXP_DEVCTL, ectl);
 }
bail:
 return ret;
}
