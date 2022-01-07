
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
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int get_pkeys (int ,int *) ;
 unsigned int ipath_get_npkeys (int ) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_smp*) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_subn_get_pkeytable(struct ib_smp *smp,
       struct ib_device *ibdev)
{
 u32 startpx = 32 * (be32_to_cpu(smp->attr_mod) & 0xffff);
 u16 *p = (u16 *) smp->data;
 __be16 *q = (__be16 *) smp->data;



 memset(smp->data, 0, sizeof(smp->data));
 if (startpx == 0) {
  struct ipath_ibdev *dev = to_idev(ibdev);
  unsigned i, n = ipath_get_npkeys(dev->dd);

  get_pkeys(dev->dd, p);

  for (i = 0; i < n; i++)
   q[i] = cpu_to_be16(p[i]);
 } else
  smp->status |= IB_SMP_INVALID_FIELD;

 return reply(smp);
}
