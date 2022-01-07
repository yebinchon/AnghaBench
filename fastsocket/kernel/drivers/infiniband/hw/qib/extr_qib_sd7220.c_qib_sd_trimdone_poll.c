
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct qib_devdata {int dummy; } ;


 int IB_SERDES_TRIM_DONE ;
 int TRIM_TMO ;
 int kr_ibcstatus ;
 int msleep (int) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;

__attribute__((used)) static int qib_sd_trimdone_poll(struct qib_devdata *dd)
{
 int trim_tmo, ret;
 uint64_t val;





 ret = 0;
 for (trim_tmo = 0; trim_tmo < TRIM_TMO; ++trim_tmo) {
  val = qib_read_kreg64(dd, kr_ibcstatus);
  if (val & IB_SERDES_TRIM_DONE) {
   ret = 1;
   break;
  }
  msleep(10);
 }
 if (trim_tmo >= TRIM_TMO) {
  qib_dev_err(dd, "No TRIMDONE in %d tries\n", trim_tmo);
  ret = 0;
 }
 return ret;
}
