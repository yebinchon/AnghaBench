
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct rndis_wlan_private {int work; int workqueue; int work_pending; int current_command_oid; } ;
struct rndis_indicate {int status; } ;


 int OID_802_11_ADD_KEY ;



 int WORK_LINK_DOWN ;
 int WORK_LINK_UP ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int le32_to_cpu (int) ;
 int netdev_dbg (int ,char*) ;
 int netdev_info (int ,char*,...) ;
 int queue_work (int ,int *) ;
 int rndis_wlan_media_specific_indication (struct usbnet*,struct rndis_indicate*,int) ;
 int set_bit (int ,int *) ;
 int usbnet_pause_rx (struct usbnet*) ;

__attribute__((used)) static void rndis_wlan_indication(struct usbnet *usbdev, void *ind, int buflen)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);
 struct rndis_indicate *msg = ind;

 switch (msg->status) {
 case 130:
  if (priv->current_command_oid == OID_802_11_ADD_KEY) {





   netdev_dbg(usbdev->net, "ignored OID_802_11_ADD_KEY triggered 'media connect'\n");
   return;
  }

  usbnet_pause_rx(usbdev);

  netdev_info(usbdev->net, "media connect\n");


  set_bit(WORK_LINK_UP, &priv->work_pending);
  queue_work(priv->workqueue, &priv->work);
  break;

 case 129:
  netdev_info(usbdev->net, "media disconnect\n");


  set_bit(WORK_LINK_DOWN, &priv->work_pending);
  queue_work(priv->workqueue, &priv->work);
  break;

 case 128:
  rndis_wlan_media_specific_indication(usbdev, msg, buflen);
  break;

 default:
  netdev_info(usbdev->net, "indication: 0x%08x\n",
       le32_to_cpu(msg->status));
  break;
 }
}
