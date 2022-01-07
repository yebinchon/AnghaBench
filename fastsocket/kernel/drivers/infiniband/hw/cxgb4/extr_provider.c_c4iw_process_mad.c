
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_wc {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int c4iw_process_mad(struct ib_device *ibdev, int mad_flags,
       u8 port_num, struct ib_wc *in_wc,
       struct ib_grh *in_grh, struct ib_mad *in_mad,
       struct ib_mad *out_mad)
{
 return -ENOSYS;
}
