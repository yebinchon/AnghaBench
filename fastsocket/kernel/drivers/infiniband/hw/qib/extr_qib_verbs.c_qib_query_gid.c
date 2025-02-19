
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_id; int subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef scalar_t__ u8 ;
struct qib_pportdata {int guid; } ;
struct qib_ibport {int * guids; int gid_prefix; } ;
struct qib_devdata {scalar_t__ num_pports; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int QIB_GUIDS_PER_PORT ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 struct qib_ibport* to_iport (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int qib_query_gid(struct ib_device *ibdev, u8 port,
    int index, union ib_gid *gid)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 int ret = 0;

 if (!port || port > dd->num_pports)
  ret = -EINVAL;
 else {
  struct qib_ibport *ibp = to_iport(ibdev, port);
  struct qib_pportdata *ppd = ppd_from_ibp(ibp);

  gid->global.subnet_prefix = ibp->gid_prefix;
  if (index == 0)
   gid->global.interface_id = ppd->guid;
  else if (index < QIB_GUIDS_PER_PORT)
   gid->global.interface_id = ibp->guids[index - 1];
  else
   ret = -EINVAL;
 }

 return ret;
}
