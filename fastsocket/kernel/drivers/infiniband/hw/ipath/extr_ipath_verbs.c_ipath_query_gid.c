
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef int u8 ;
struct ipath_ibdev {TYPE_2__* dd; int gid_prefix; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int ipath_guid; } ;


 int EINVAL ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_query_gid(struct ib_device *ibdev, u8 port,
      int index, union ib_gid *gid)
{
 struct ipath_ibdev *dev = to_idev(ibdev);
 int ret;

 if (index >= 1) {
  ret = -EINVAL;
  goto bail;
 }
 gid->global.subnet_prefix = dev->gid_prefix;
 gid->global.interface_id = dev->dd->ipath_guid;

 ret = 0;

bail:
 return ret;
}
