
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {int ptr; } ;
struct sockaddr {int sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int islpci_private ;


 int ARPHRD_ETHER ;
 int DOT11_OID_BSSID ;
 int kfree (int ) ;
 int memcpy (int ,int ,int) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_wap(struct net_device *ndev, struct iw_request_info *info,
  struct sockaddr *awrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 union oid_res_t r;
 int rvalue;

 rvalue = mgt_get_request(priv, DOT11_OID_BSSID, 0, ((void*)0), &r);
 memcpy(awrq->sa_data, r.ptr, 6);
 awrq->sa_family = ARPHRD_ETHER;
 kfree(r.ptr);

 return rvalue;
}
