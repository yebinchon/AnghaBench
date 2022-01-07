
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {struct obj_bsslist* ptr; int u; } ;
typedef int u32 ;
struct obj_bsslist {int * bsslist; scalar_t__ nr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
typedef int islpci_private ;


 int DOT11_OID_BSSLIST ;
 int DOT11_OID_NOISEFLOOR ;
 int E2BIG ;
 int IW_EV_ADDR_LEN ;
 scalar_t__ PRV_STATE_INIT ;
 scalar_t__ islpci_get_state (int *) ;
 int kfree (struct obj_bsslist*) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int * netdev_priv (struct net_device*) ;
 char* prism54_translate_bss (struct net_device*,struct iw_request_info*,char*,char*,int *,int ) ;

__attribute__((used)) static int
prism54_get_scan(struct net_device *ndev, struct iw_request_info *info,
   struct iw_point *dwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 int i, rvalue;
 struct obj_bsslist *bsslist;
 u32 noise = 0;
 char *current_ev = extra;
 union oid_res_t r;

 if (islpci_get_state(priv) < PRV_STATE_INIT) {

  dwrq->length = 0;
  return 0;
 }


 rvalue = mgt_get_request(priv, DOT11_OID_NOISEFLOOR, 0, ((void*)0), &r);
 noise = r.u;
 rvalue |= mgt_get_request(priv, DOT11_OID_BSSLIST, 0, ((void*)0), &r);
 bsslist = r.ptr;


 for (i = 0; i < (int) bsslist->nr; i++) {
  current_ev = prism54_translate_bss(ndev, info, current_ev,
         extra + dwrq->length,
         &(bsslist->bsslist[i]),
         noise);


  if((extra + dwrq->length - current_ev) <= IW_EV_ADDR_LEN) {

   rvalue = -E2BIG;
   break;
  }
 }

 kfree(bsslist);
 dwrq->length = (current_ev - extra);
 dwrq->flags = 0;

 return rvalue;
}
