
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {char* ptr; } ;
typedef char u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ fixed; } ;
typedef int islpci_private ;


 int DOT11_OID_EXTENDEDRATES ;
 int DOT11_OID_PROFILES ;
 int DOT11_OID_RATES ;
 int DOT11_OID_SUPPORTEDRATES ;
 int EINVAL ;
 int kfree (char*) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int mgt_set_request (int *,int ,int ,char*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_rate(struct net_device *ndev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{

 islpci_private *priv = netdev_priv(ndev);
 u32 rate, profile;
 char *data;
 int ret, i;
 union oid_res_t r;

 if (vwrq->value == -1) {

  profile = 1;
  return mgt_set_request(priv, DOT11_OID_PROFILES, 0, &profile);
 }

 ret = mgt_get_request(priv, DOT11_OID_SUPPORTEDRATES, 0, ((void*)0), &r);
 if (ret) {
  kfree(r.ptr);
  return ret;
 }

 rate = (u32) (vwrq->value / 500000);
 data = r.ptr;
 i = 0;

 while (data[i]) {
  if (rate && (data[i] == rate)) {
   break;
  }
  if (vwrq->value == i) {
   break;
  }
  data[i] |= 0x80;
  i++;
 }

 if (!data[i]) {
  kfree(r.ptr);
  return -EINVAL;
 }

 data[i] |= 0x80;
 data[i + 1] = 0;


 if (vwrq->fixed) {
  data[0] = data[i];
  data[1] = 0;
 }
 profile = -1;
 ret = mgt_set_request(priv, DOT11_OID_PROFILES, 0, &profile);
 ret |= mgt_set_request(priv, DOT11_OID_EXTENDEDRATES, 0, data);
 ret |= mgt_set_request(priv, DOT11_OID_RATES, 0, data);

 kfree(r.ptr);

 return ret;
}
