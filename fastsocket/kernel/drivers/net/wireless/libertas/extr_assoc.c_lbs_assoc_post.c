
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sa_family; int * sa_data; } ;
union iwreq_data {TYPE_4__ ap_addr; } ;
typedef int u16 ;
struct TYPE_7__ {int * bssid; int ssid_len; int ssid; } ;
struct lbs_private {int fwrelease; int dev; TYPE_3__ curbssparams; int tx_pending_len; scalar_t__ numSNRNF; scalar_t__ nextSNRNF; int rawNF; int rawSNR; scalar_t__** NF; scalar_t__** SNR; int connect_status; TYPE_1__* in_progress_assoc_req; } ;
struct TYPE_6__ {int size; } ;
struct cmd_ds_802_11_associate_response {TYPE_2__ hdr; int statuscode; } ;
struct bss_descriptor {int * bssid; int ssid_len; int ssid; } ;
struct TYPE_5__ {struct bss_descriptor bss; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int IW_ESSID_MAX_SIZE ;
 int LBS_CONNECTED ;
 int LBS_DEB_ASSOC ;
 int SIOCGIWAP ;
 size_t TYPE_AVG ;
 size_t TYPE_RXPD ;
 int lbs_deb_assoc (char*,...) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_hex (int ,char*,void*,int) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_mac_event_disconnected (struct lbs_private*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int ) ;
 int memset (int ,int,int) ;
 int netif_carrier_on (int ) ;
 int netif_wake_queue (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static int lbs_assoc_post(struct lbs_private *priv,
     struct cmd_ds_802_11_associate_response *resp)
{
 int ret = 0;
 union iwreq_data wrqu;
 struct bss_descriptor *bss;
 u16 status_code;

 lbs_deb_enter(LBS_DEB_ASSOC);

 if (!priv->in_progress_assoc_req) {
  lbs_deb_assoc("ASSOC_RESP: no in-progress assoc request\n");
  ret = -1;
  goto done;
 }
 bss = &priv->in_progress_assoc_req->bss;
 status_code = le16_to_cpu(resp->statuscode);
 if (priv->fwrelease < 0x09000000) {
  switch (status_code) {
  case 0x00:
   break;
  case 0x01:
   lbs_deb_assoc("ASSOC_RESP: invalid parameters\n");
   break;
  case 0x02:
   lbs_deb_assoc("ASSOC_RESP: internal timer "
    "expired while waiting for the AP\n");
   break;
  case 0x03:
   lbs_deb_assoc("ASSOC_RESP: association "
    "refused by AP\n");
   break;
  case 0x04:
   lbs_deb_assoc("ASSOC_RESP: authentication "
    "refused by AP\n");
   break;
  default:
   lbs_deb_assoc("ASSOC_RESP: failure reason 0x%02x "
    " unknown\n", status_code);
   break;
  }
 } else {

  lbs_deb_assoc("ASSOC_RESP: failure reason 0x%02x\n", status_code);
 }

 if (status_code) {
  lbs_mac_event_disconnected(priv);
  ret = -1;
  goto done;
 }

 lbs_deb_hex(LBS_DEB_ASSOC, "ASSOC_RESP",
      (void *) (resp + sizeof (resp->hdr)),
      le16_to_cpu(resp->hdr.size) - sizeof (resp->hdr));


 priv->connect_status = LBS_CONNECTED;


 memcpy(&priv->curbssparams.ssid, &bss->ssid, IW_ESSID_MAX_SIZE);
 priv->curbssparams.ssid_len = bss->ssid_len;
 memcpy(priv->curbssparams.bssid, bss->bssid, ETH_ALEN);

 priv->SNR[TYPE_RXPD][TYPE_AVG] = 0;
 priv->NF[TYPE_RXPD][TYPE_AVG] = 0;

 memset(priv->rawSNR, 0x00, sizeof(priv->rawSNR));
 memset(priv->rawNF, 0x00, sizeof(priv->rawNF));
 priv->nextSNRNF = 0;
 priv->numSNRNF = 0;

 netif_carrier_on(priv->dev);
 if (!priv->tx_pending_len)
  netif_wake_queue(priv->dev);

 memcpy(wrqu.ap_addr.sa_data, priv->curbssparams.bssid, ETH_ALEN);
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 wireless_send_event(priv->dev, SIOCGIWAP, &wrqu, ((void*)0));

done:
 lbs_deb_leave_args(LBS_DEB_ASSOC, "ret %d", ret);
 return ret;
}
