
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_flags; int ipath_boardrev; int ipath_hwerrmask; TYPE_1__* ipath_kregs; } ;
typedef int ipath_err_t ;
struct TYPE_2__ {int kr_extstatus; } ;


 int INFINIPATH_EXTS_MEMBIST_CORRECT ;
 int INFINIPATH_EXTS_MEMBIST_ENDTEST ;
 int INFINIPATH_HWE_HTCMISCERR4 ;
 int INFINIPATH_HWE_RXDSYNCMEMPARITYERR ;
 int INFINIPATH_HWE_SERDESPLLFAILED ;
 int IPATH_8BIT_IN_HT0 ;
 int IPATH_8BIT_IN_HT1 ;
 int infinipath_hwe_htclnkabyte1crcerr ;
 int infinipath_hwe_htclnkbbyte1crcerr ;
 int ipath_check_htlink (struct ipath_devdata*) ;
 int ipath_dbg (char*) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;

__attribute__((used)) static void ipath_ht_init_hwerrors(struct ipath_devdata *dd)
{
 ipath_err_t val;
 u64 extsval;

 extsval = ipath_read_kreg64(dd, dd->ipath_kregs->kr_extstatus);

 if (!(extsval & INFINIPATH_EXTS_MEMBIST_ENDTEST))
  ipath_dev_err(dd, "MemBIST did not complete!\n");
 if (extsval & INFINIPATH_EXTS_MEMBIST_CORRECT)
  ipath_dbg("MemBIST corrected\n");

 ipath_check_htlink(dd);


 val = -1LL;

 if (dd->ipath_flags & IPATH_8BIT_IN_HT0)
  val &= ~infinipath_hwe_htclnkabyte1crcerr;

 if (dd->ipath_flags & IPATH_8BIT_IN_HT1)
  val &= ~infinipath_hwe_htclnkbbyte1crcerr;
 val &= ~(INFINIPATH_HWE_SERDESPLLFAILED |
   INFINIPATH_HWE_RXDSYNCMEMPARITYERR);







 val &= ~INFINIPATH_HWE_HTCMISCERR4;




 if (dd->ipath_boardrev == 4 || dd->ipath_boardrev == 9)
  val &= ~INFINIPATH_HWE_SERDESPLLFAILED;
 dd->ipath_hwerrmask = val;
}
