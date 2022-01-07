
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ipath_ibdev {int dd; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ ipath_get_npkeys (int ) ;
 scalar_t__ ipath_get_pkey (int ,scalar_t__) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_query_pkey(struct ib_device *ibdev, u8 port, u16 index,
       u16 *pkey)
{
 struct ipath_ibdev *dev = to_idev(ibdev);
 int ret;

 if (index >= ipath_get_npkeys(dev->dd)) {
  ret = -EINVAL;
  goto bail;
 }

 *pkey = ipath_get_pkey(dev->dd, index);
 ret = 0;

bail:
 return ret;
}
