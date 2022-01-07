
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qib_devdata {scalar_t__ rcvhdrentsize; scalar_t__ rcvhdrsize; scalar_t__ rcvhdrcnt; scalar_t__ pioavailregs_phys; } ;


 int EINVAL ;
 int kr_rcvhdrcnt ;
 int kr_rcvhdrentsize ;
 int kr_rcvhdrsize ;
 int kr_sendpioavailaddr ;
 int qib_dev_err (struct qib_devdata*,char*,unsigned long,unsigned long long) ;
 scalar_t__ qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,scalar_t__) ;

__attribute__((used)) static int qib_late_6120_initreg(struct qib_devdata *dd)
{
 int ret = 0;
 u64 val;

 qib_write_kreg(dd, kr_rcvhdrentsize, dd->rcvhdrentsize);
 qib_write_kreg(dd, kr_rcvhdrsize, dd->rcvhdrsize);
 qib_write_kreg(dd, kr_rcvhdrcnt, dd->rcvhdrcnt);
 qib_write_kreg(dd, kr_sendpioavailaddr, dd->pioavailregs_phys);
 val = qib_read_kreg64(dd, kr_sendpioavailaddr);
 if (val != dd->pioavailregs_phys) {
  qib_dev_err(dd,
   "Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\n",
   (unsigned long) dd->pioavailregs_phys,
   (unsigned long long) val);
  ret = -EINVAL;
 }
 return ret;
}
