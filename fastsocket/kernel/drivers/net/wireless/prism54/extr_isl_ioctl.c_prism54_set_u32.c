
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int mgt_set_request (int ,int ,int ,int *) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_u32(struct net_device *ndev, struct iw_request_info *info,
  __u32 * uwrq, char *extra)
{
 u32 oid = uwrq[0], u = uwrq[1];

 return mgt_set_request(netdev_priv(ndev), oid, 0, &u);
}
