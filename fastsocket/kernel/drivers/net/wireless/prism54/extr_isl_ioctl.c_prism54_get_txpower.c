
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {scalar_t__ u; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; scalar_t__ disabled; } ;
typedef int s32 ;
typedef int islpci_private ;


 int OID_INL_OUTPUTPOWER ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_txpower(struct net_device *ndev, struct iw_request_info *info,
      struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 union oid_res_t r;
 int rvalue;

 rvalue = mgt_get_request(priv, OID_INL_OUTPUTPOWER, 0, ((void*)0), &r);

 vwrq->value = (s32) r.u / 4;
 vwrq->fixed = 1;



 vwrq->disabled = 0;

 return rvalue;
}
