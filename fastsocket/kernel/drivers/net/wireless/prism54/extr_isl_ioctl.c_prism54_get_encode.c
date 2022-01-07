
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {scalar_t__ u; struct obj_key* ptr; } ;
typedef scalar_t__ u32 ;
struct obj_key {int key; int length; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
typedef int islpci_private ;


 scalar_t__ DOT11_AUTH_BOTH ;
 scalar_t__ DOT11_AUTH_OS ;
 int DOT11_OID_AUTHENABLE ;
 int DOT11_OID_DEFKEYID ;
 int DOT11_OID_DEFKEYX ;
 int DOT11_OID_EXUNENCRYPTED ;
 int DOT11_OID_PRIVACYINVOKED ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 int kfree (struct obj_key*) ;
 int memcpy (char*,int ,int ) ;
 int mgt_get_request (int *,int ,scalar_t__,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_encode(struct net_device *ndev, struct iw_request_info *info,
     struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct obj_key *key;
 u32 devindex, index = (dwrq->flags & IW_ENCODE_INDEX) - 1;
 u32 authen = 0, invoke = 0, exunencrypt = 0;
 int rvalue;
 union oid_res_t r;


 rvalue = mgt_get_request(priv, DOT11_OID_AUTHENABLE, 0, ((void*)0), &r);
 authen = r.u;
 rvalue |= mgt_get_request(priv, DOT11_OID_PRIVACYINVOKED, 0, ((void*)0), &r);
 invoke = r.u;
 rvalue |= mgt_get_request(priv, DOT11_OID_EXUNENCRYPTED, 0, ((void*)0), &r);
 exunencrypt = r.u;

 if (invoke && (authen == DOT11_AUTH_BOTH) && exunencrypt)
  dwrq->flags = IW_ENCODE_RESTRICTED;
 else if ((authen == DOT11_AUTH_OS) && !exunencrypt) {
  if (invoke)
   dwrq->flags = IW_ENCODE_OPEN;
  else
   dwrq->flags = IW_ENCODE_DISABLED;
 } else

  dwrq->flags = 0;


 rvalue |= mgt_get_request(priv, DOT11_OID_DEFKEYID, 0, ((void*)0), &r);
 devindex = r.u;

 if (index == -1 || index > 3)

  index = devindex;
 rvalue |= mgt_get_request(priv, DOT11_OID_DEFKEYX, index, ((void*)0), &r);
 key = r.ptr;
 dwrq->length = key->length;
 memcpy(extra, key->key, dwrq->length);
 kfree(key);

 dwrq->flags |= devindex + 1;

 return rvalue;
}
