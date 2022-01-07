
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct msix_entry {int dummy; } ;
struct qib_msix_entry {struct msix_entry msix; } ;
struct qib_devdata {int pcidev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_QSIZE ;
 int kfree (struct msix_entry*) ;
 struct msix_entry* kmalloc (int,int ) ;
 int pci_enable_msix (int ,struct msix_entry*,int) ;
 int pci_read_config_word (int ,scalar_t__,int*) ;
 int qib_dev_err (struct qib_devdata*,char*,int,int) ;
 int qib_enable_intx (int ) ;

__attribute__((used)) static void qib_msix_setup(struct qib_devdata *dd, int pos, u32 *msixcnt,
      struct qib_msix_entry *qib_msix_entry)
{
 int ret;
 u32 tabsize = 0;
 u16 msix_flags;
 struct msix_entry *msix_entry;
 int i;




 msix_entry = kmalloc(*msixcnt * sizeof(*msix_entry), GFP_KERNEL);
 if (!msix_entry) {
  ret = -ENOMEM;
  goto do_intx;
 }
 for (i = 0; i < *msixcnt; i++)
  msix_entry[i] = qib_msix_entry[i].msix;

 pci_read_config_word(dd->pcidev, pos + PCI_MSIX_FLAGS, &msix_flags);
 tabsize = 1 + (msix_flags & PCI_MSIX_FLAGS_QSIZE);
 if (tabsize > *msixcnt)
  tabsize = *msixcnt;
 ret = pci_enable_msix(dd->pcidev, msix_entry, tabsize);
 if (ret > 0) {
  tabsize = ret;
  ret = pci_enable_msix(dd->pcidev, msix_entry, tabsize);
 }
do_intx:
 if (ret) {
  qib_dev_err(dd,
   "pci_enable_msix %d vectors failed: %d, falling back to INTx\n",
   tabsize, ret);
  tabsize = 0;
 }
 for (i = 0; i < tabsize; i++)
  qib_msix_entry[i].msix = msix_entry[i];
 kfree(msix_entry);
 *msixcnt = tabsize;

 if (ret)
  qib_enable_intx(dd->pcidev);

}
