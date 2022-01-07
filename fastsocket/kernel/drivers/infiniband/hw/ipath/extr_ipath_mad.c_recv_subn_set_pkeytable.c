
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ipath_ibdev {int dd; } ;
struct ib_smp {int status; scalar_t__ data; int attr_mod; } ;
struct ib_device {int dummy; } ;
typedef int __be16 ;


 int IB_SMP_INVALID_FIELD ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 unsigned int ipath_get_npkeys (int ) ;
 int recv_subn_get_pkeytable (struct ib_smp*,struct ib_device*) ;
 scalar_t__ set_pkeys (int ,int *) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_subn_set_pkeytable(struct ib_smp *smp,
       struct ib_device *ibdev)
{
 u32 startpx = 32 * (be32_to_cpu(smp->attr_mod) & 0xffff);
 __be16 *p = (__be16 *) smp->data;
 u16 *q = (u16 *) smp->data;
 struct ipath_ibdev *dev = to_idev(ibdev);
 unsigned i, n = ipath_get_npkeys(dev->dd);

 for (i = 0; i < n; i++)
  q[i] = be16_to_cpu(p[i]);

 if (startpx != 0 || set_pkeys(dev->dd, q) != 0)
  smp->status |= IB_SMP_INVALID_FIELD;

 return recv_subn_get_pkeytable(smp, ibdev);
}
