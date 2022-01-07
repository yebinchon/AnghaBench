
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
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int get_pkeys (struct qib_devdata*,int ,int *) ;
 int memset (scalar_t__,int ,int) ;
 unsigned int qib_get_npkeys (struct qib_devdata*) ;
 int reply (struct ib_smp*) ;

__attribute__((used)) static int subn_get_pkeytable(struct ib_smp *smp, struct ib_device *ibdev,
         u8 port)
{
 u32 startpx = 32 * (be32_to_cpu(smp->attr_mod) & 0xffff);
 u16 *p = (u16 *) smp->data;
 __be16 *q = (__be16 *) smp->data;



 memset(smp->data, 0, sizeof(smp->data));
 if (startpx == 0) {
  struct qib_devdata *dd = dd_from_ibdev(ibdev);
  unsigned i, n = qib_get_npkeys(dd);

  get_pkeys(dd, port, p);

  for (i = 0; i < n; i++)
   q[i] = cpu_to_be16(p[i]);
 } else
  smp->status |= IB_SMP_INVALID_FIELD;

 return reply(smp);
}
