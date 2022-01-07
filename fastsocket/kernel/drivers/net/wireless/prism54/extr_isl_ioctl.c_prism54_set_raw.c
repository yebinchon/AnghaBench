
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; } ;


 int mgt_set_request (int ,int ,int ,char*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_raw(struct net_device *ndev, struct iw_request_info *info,
  struct iw_point *dwrq, char *extra)
{
 u32 oid = dwrq->flags;

 return mgt_set_request(netdev_priv(ndev), oid, 0, extra);
}
