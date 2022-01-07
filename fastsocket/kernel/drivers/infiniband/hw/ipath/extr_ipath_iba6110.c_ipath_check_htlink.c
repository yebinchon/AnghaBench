
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipath_devdata {int ipath_ht_slave_off; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int VERBOSE ;
 int dev_info (int *,char*,int,...) ;
 int ipath_cdbg (int ,char*,int,int) ;
 int ipath_dbg (char*,int) ;
 scalar_t__ pci_read_config_byte (TYPE_1__*,int,int*) ;
 scalar_t__ pci_write_config_byte (TYPE_1__*,int,int) ;

__attribute__((used)) static void ipath_check_htlink(struct ipath_devdata *dd)
{
 u8 linkerr, link_off, i;

 for (i = 0; i < 2; i++) {
  link_off = dd->ipath_ht_slave_off + i * 4 + 0xd;
  if (pci_read_config_byte(dd->pcidev, link_off, &linkerr))
   dev_info(&dd->pcidev->dev, "Couldn't read "
     "linkerror%d of HT slave/primary block\n",
     i);
  else if (linkerr & 0xf0) {
   ipath_cdbg(VERBOSE, "HT linkerr%d bits 0x%x set, "
       "clearing\n", linkerr >> 4, i);




   if (pci_write_config_byte(dd->pcidev, link_off,
        linkerr))
    ipath_dbg("Failed write to clear HT "
       "linkerror%d\n", i);
   if (pci_read_config_byte(dd->pcidev, link_off,
       &linkerr))
    dev_info(&dd->pcidev->dev,
      "Couldn't reread linkerror%d of "
      "HT slave/primary block\n", i);
   else if (linkerr & 0xf0)
    dev_info(&dd->pcidev->dev,
      "HT linkerror%d bits 0x%x "
      "couldn't be cleared\n",
      i, linkerr >> 4);
  }
 }
}
