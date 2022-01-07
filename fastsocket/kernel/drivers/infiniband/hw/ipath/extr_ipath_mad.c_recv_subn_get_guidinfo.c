
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ib_smp {int status; scalar_t__ data; int attr_mod; } ;
struct ib_device {int dummy; } ;
typedef scalar_t__ __be64 ;
struct TYPE_4__ {TYPE_1__* dd; } ;
struct TYPE_3__ {scalar_t__ ipath_guid; } ;


 int IB_SMP_INVALID_FIELD ;
 int be32_to_cpu (int ) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_smp*) ;
 TYPE_2__* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_subn_get_guidinfo(struct ib_smp *smp,
      struct ib_device *ibdev)
{
 u32 startgx = 8 * be32_to_cpu(smp->attr_mod);
 __be64 *p = (__be64 *) smp->data;



 memset(smp->data, 0, sizeof(smp->data));





 if (startgx == 0) {
  __be64 g = to_idev(ibdev)->dd->ipath_guid;
  if (g == 0)

   smp->status |= IB_SMP_INVALID_FIELD;
  else

   *p = g;
 } else
  smp->status |= IB_SMP_INVALID_FIELD;

 return reply(smp);
}
