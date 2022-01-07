
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union oid_res_t {struct obj_bsslist* ptr; int u; } ;
typedef int u32 ;
struct prism2_hostapd_param {int dummy; } ;
struct obj_bsslist {int * bsslist; scalar_t__ nr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {scalar_t__ flags; int cmd; } ;
typedef int islpci_private ;


 int DOT11_OID_BSSLIST ;
 int DOT11_OID_NOISEFLOOR ;
 int IW_MAX_AP ;
 int IW_SCAN_MAX_DATA ;
 int PRISM54_HOSTAPD ;
 scalar_t__ PRV_STATE_INIT ;
 scalar_t__ islpci_get_state (int *) ;
 int kfree (struct obj_bsslist*) ;
 int mgt_get_request (int *,int ,int ,int *,union oid_res_t*) ;
 int min (int ,int) ;
 int * netdev_priv (struct net_device*) ;
 char* prism54_translate_bss (struct net_device*,struct iw_request_info*,char*,char*,int *,int ) ;

__attribute__((used)) static int
prism2_ioctl_scan_req(struct net_device *ndev,
                     struct prism2_hostapd_param *param)
{
 islpci_private *priv = netdev_priv(ndev);
 struct iw_request_info info;
 int i, rvalue;
 struct obj_bsslist *bsslist;
 u32 noise = 0;
 char *extra = "";
 char *current_ev = "foo";
 union oid_res_t r;

 if (islpci_get_state(priv) < PRV_STATE_INIT) {

  return 0;
 }


 rvalue = mgt_get_request(priv, DOT11_OID_NOISEFLOOR, 0, ((void*)0), &r);
 noise = r.u;





 rvalue |= mgt_get_request(priv, DOT11_OID_BSSLIST, 0, ((void*)0), &r);
 bsslist = r.ptr;

 info.cmd = PRISM54_HOSTAPD;
 info.flags = 0;


 for (i = 0; i < min(IW_MAX_AP, (int) bsslist->nr); i++)
  current_ev = prism54_translate_bss(ndev, &info, current_ev,
         extra + IW_SCAN_MAX_DATA,
         &(bsslist->bsslist[i]),
         noise);
 kfree(bsslist);

 return rvalue;
}
