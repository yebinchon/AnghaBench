
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct qib_devdata {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 scalar_t__ qib_get_npkeys (struct qib_devdata*) ;
 scalar_t__ qib_get_pkey (int ,scalar_t__) ;
 int to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int qib_query_pkey(struct ib_device *ibdev, u8 port, u16 index,
     u16 *pkey)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 int ret;

 if (index >= qib_get_npkeys(dd)) {
  ret = -EINVAL;
  goto bail;
 }

 *pkey = qib_get_pkey(to_iport(ibdev, port), index);
 ret = 0;

bail:
 return ret;
}
