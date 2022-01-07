
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {scalar_t__ piobcnt4k; scalar_t__ piobcnt2k; } ;


 scalar_t__ kr_sendbuffererror ;
 int qib_disarm_piobufs_set (struct qib_devdata*,unsigned long*,scalar_t__) ;
 unsigned long qib_read_kreg64 (struct qib_devdata*,scalar_t__) ;

__attribute__((used)) static void qib_disarm_7220_senderrbufs(struct qib_pportdata *ppd)
{
 unsigned long sbuf[3];
 struct qib_devdata *dd = ppd->dd;






 sbuf[0] = qib_read_kreg64(dd, kr_sendbuffererror);
 sbuf[1] = qib_read_kreg64(dd, kr_sendbuffererror + 1);
 sbuf[2] = qib_read_kreg64(dd, kr_sendbuffererror + 2);

 if (sbuf[0] || sbuf[1] || sbuf[2])
  qib_disarm_piobufs_set(dd, sbuf,
           dd->piobcnt2k + dd->piobcnt4k);
}
