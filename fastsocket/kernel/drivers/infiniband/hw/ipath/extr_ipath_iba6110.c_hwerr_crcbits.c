
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ipath_devdata {int ipath_flags; int ipath_hwerrmask; TYPE_1__* ipath_kregs; TYPE_2__* pcidev; scalar_t__ ipath_ht_slave_off; } ;
typedef int ipath_err_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int kr_hwerrmask; } ;


 int IPATH_8BIT_IN_HT0 ;
 int IPATH_8BIT_IN_HT1 ;
 int _IPATH_HTLANE0_CRCBITS ;
 int _IPATH_HTLANE1_CRCBITS ;
 int _IPATH_HTLINK0_CRCBITS ;
 int _IPATH_HTLINK1_CRCBITS ;
 int dev_info (int *,char*) ;
 int infinipath_hwe_htclnkabyte1crcerr ;
 int infinipath_hwe_htclnkbbyte1crcerr ;
 int ipath_dbg (char*,...) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 scalar_t__ pci_read_config_word (TYPE_2__*,scalar_t__,int*) ;
 int snprintf (char*,int,char*,char*,char*,unsigned long long) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static void hwerr_crcbits(struct ipath_devdata *dd, ipath_err_t hwerrs,
     char *msg, size_t msgl)
{
 char bitsmsg[64];
 ipath_err_t crcbits = hwerrs &
  (_IPATH_HTLINK0_CRCBITS | _IPATH_HTLINK1_CRCBITS);

 if (dd->ipath_flags & IPATH_8BIT_IN_HT0)
  crcbits &= ~infinipath_hwe_htclnkabyte1crcerr;

 if (dd->ipath_flags & IPATH_8BIT_IN_HT1)
  crcbits &= ~infinipath_hwe_htclnkbbyte1crcerr;




 if (crcbits) {
  u16 ctrl0, ctrl1;
  snprintf(bitsmsg, sizeof bitsmsg,
    "[HT%s lane %s CRC (%llx); powercycle to completely clear]",
    !(crcbits & _IPATH_HTLINK1_CRCBITS) ?
    "0 (A)" : (!(crcbits & _IPATH_HTLINK0_CRCBITS)
        ? "1 (B)" : "0+1 (A+B)"),
    !(crcbits & _IPATH_HTLANE1_CRCBITS) ? "0"
    : (!(crcbits & _IPATH_HTLANE0_CRCBITS) ? "1" :
       "0+1"), (unsigned long long) crcbits);
  strlcat(msg, bitsmsg, msgl);






  if (pci_read_config_word(dd->pcidev,
      dd->ipath_ht_slave_off + 0x4,
      &ctrl0))
   dev_info(&dd->pcidev->dev, "Couldn't read "
     "linkctrl0 of slave/primary "
     "config block\n");
  else if (!(ctrl0 & 1 << 6))

   ipath_dbg("HT linkctrl0 0x%x%s%s\n", ctrl0,
      ((ctrl0 >> 8) & 7) ? " CRC" : "",
      ((ctrl0 >> 4) & 1) ? "linkfail" :
      "");
  if (pci_read_config_word(dd->pcidev,
      dd->ipath_ht_slave_off + 0x8,
      &ctrl1))
   dev_info(&dd->pcidev->dev, "Couldn't read "
     "linkctrl1 of slave/primary "
     "config block\n");
  else if (!(ctrl1 & 1 << 6))

   ipath_dbg("HT linkctrl1 0x%x%s%s\n", ctrl1,
      ((ctrl1 >> 8) & 7) ? " CRC" : "",
      ((ctrl1 >> 4) & 1) ? "linkfail" :
      "");


  dd->ipath_hwerrmask &= ~crcbits;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrmask,
     dd->ipath_hwerrmask);
  ipath_dbg("HT crc errs: %s\n", msg);
 } else
  ipath_dbg("ignoring HT crc errors 0x%llx, "
     "not in use\n", (unsigned long long)
     (hwerrs & (_IPATH_HTLINK0_CRCBITS |
         _IPATH_HTLINK1_CRCBITS)));
}
