
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct fip_header {int fip_subcode; } ;
struct fcoe_rport {int dummy; } ;
struct fcoe_ctlr {int ctlr_mutex; } ;
struct fc_rport_priv {int dummy; } ;
typedef enum fip_vn2vn_subcode { ____Placeholder_fip_vn2vn_subcode } fip_vn2vn_subcode ;







 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int) ;
 int fcoe_ctlr_vn_beacon (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_claim_notify (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_claim_resp (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_parse (struct fcoe_ctlr*,struct sk_buff*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_probe_reply (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_probe_req (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fcoe_ctlr_vn_recv(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 struct fip_header *fiph;
 enum fip_vn2vn_subcode sub;
 struct {
  struct fc_rport_priv rdata;
  struct fcoe_rport frport;
 } buf;
 int rc;

 fiph = (struct fip_header *)skb->data;
 sub = fiph->fip_subcode;

 rc = fcoe_ctlr_vn_parse(fip, skb, &buf.rdata);
 if (rc) {
  LIBFCOE_FIP_DBG(fip, "vn_recv vn_parse error %d\n", rc);
  goto drop;
 }

 mutex_lock(&fip->ctlr_mutex);
 switch (sub) {
 case 128:
  fcoe_ctlr_vn_probe_req(fip, &buf.rdata);
  break;
 case 129:
  fcoe_ctlr_vn_probe_reply(fip, &buf.rdata);
  break;
 case 131:
  fcoe_ctlr_vn_claim_notify(fip, &buf.rdata);
  break;
 case 130:
  fcoe_ctlr_vn_claim_resp(fip, &buf.rdata);
  break;
 case 132:
  fcoe_ctlr_vn_beacon(fip, &buf.rdata);
  break;
 default:
  LIBFCOE_FIP_DBG(fip, "vn_recv unknown subcode %d\n", sub);
  rc = -1;
  break;
 }
 mutex_unlock(&fip->ctlr_mutex);
drop:
 kfree_skb(skb);
 return rc;
}
