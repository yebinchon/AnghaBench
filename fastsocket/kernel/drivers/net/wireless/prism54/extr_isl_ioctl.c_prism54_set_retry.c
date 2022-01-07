
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; scalar_t__ disabled; } ;
typedef int islpci_private ;


 int DOT11_OID_LONGRETRIES ;
 int DOT11_OID_MAXTXLIFETIME ;
 int DOT11_OID_SHORTRETRIES ;
 int EINVAL ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int mgt_set_request (int *,int ,int ,int*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_retry(struct net_device *ndev, struct iw_request_info *info,
    struct iw_param *vwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 u32 slimit = 0, llimit = 0;
 u32 lifetime = 0;
 int rvalue = 0;

 if (vwrq->disabled)

  return -EINVAL;

 if (vwrq->flags & IW_RETRY_LIMIT) {
  if (vwrq->flags & IW_RETRY_SHORT)
   slimit = vwrq->value;
  else if (vwrq->flags & IW_RETRY_LONG)
   llimit = vwrq->value;
  else {

   slimit = vwrq->value;
   llimit = vwrq->value;
  }
 }
 if (vwrq->flags & IW_RETRY_LIFETIME)

  lifetime = vwrq->value / 1024;


 if (slimit)
  rvalue =
      mgt_set_request(priv, DOT11_OID_SHORTRETRIES, 0, &slimit);
 if (llimit)
  rvalue |=
      mgt_set_request(priv, DOT11_OID_LONGRETRIES, 0, &llimit);
 if (lifetime)
  rvalue |=
      mgt_set_request(priv, DOT11_OID_MAXTXLIFETIME, 0,
        &lifetime);
 return rvalue;
}
