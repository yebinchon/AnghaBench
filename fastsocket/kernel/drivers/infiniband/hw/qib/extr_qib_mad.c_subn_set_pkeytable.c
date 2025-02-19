
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct qib_devdata {int dummy; } ;
struct ib_smp {int status; scalar_t__ data; int attr_mod; } ;
struct ib_device {int dummy; } ;
typedef int __be16 ;


 int IB_SMP_INVALID_FIELD ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 unsigned int qib_get_npkeys (struct qib_devdata*) ;
 scalar_t__ set_pkeys (struct qib_devdata*,int ,int *) ;
 int subn_get_pkeytable (struct ib_smp*,struct ib_device*,int ) ;

__attribute__((used)) static int subn_set_pkeytable(struct ib_smp *smp, struct ib_device *ibdev,
         u8 port)
{
 u32 startpx = 32 * (be32_to_cpu(smp->attr_mod) & 0xffff);
 __be16 *p = (__be16 *) smp->data;
 u16 *q = (u16 *) smp->data;
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 unsigned i, n = qib_get_npkeys(dd);

 for (i = 0; i < n; i++)
  q[i] = be16_to_cpu(p[i]);

 if (startpx != 0 || set_pkeys(dd, port, q) != 0)
  smp->status |= IB_SMP_INVALID_FIELD;

 return subn_get_pkeytable(smp, ibdev, port);
}
