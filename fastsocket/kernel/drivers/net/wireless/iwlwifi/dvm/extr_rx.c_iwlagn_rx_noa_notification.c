
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int length; } ;
struct iwl_wipan_noa_notification {TYPE_1__ noa_attribute; scalar_t__ noa_active; } ;
struct iwl_wipan_noa_data {int length; int* data; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int noa_data; } ;
struct iwl_device_cmd {int dummy; } ;


 int GFP_ATOMIC ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WLAN_OUI_TYPE_WFA_P2P ;
 int WLAN_OUI_WFA ;
 int kfree_rcu (struct iwl_wipan_noa_data*,int ) ;
 struct iwl_wipan_noa_data* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int*,TYPE_1__*,int) ;
 int rcu_assign_pointer (int ,struct iwl_wipan_noa_data*) ;
 struct iwl_wipan_noa_data* rcu_dereference_protected (int ,int) ;
 int rcu_head ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static int iwlagn_rx_noa_notification(struct iwl_priv *priv,
          struct iwl_rx_cmd_buffer *rxb,
          struct iwl_device_cmd *cmd)
{
 struct iwl_wipan_noa_data *new_data, *old_data;
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_wipan_noa_notification *noa_notif = (void *)pkt->data;


 old_data = rcu_dereference_protected(priv->noa_data, 1);

 if (noa_notif->noa_active) {
  u32 len = le16_to_cpu(noa_notif->noa_attribute.length);
  u32 copylen = len;


  len += 1 + 1 + 3 + 1;

  len += 1 + 2;
  copylen += 1 + 2;

  new_data = kmalloc(sizeof(*new_data) + len, GFP_ATOMIC);
  if (new_data) {
   new_data->length = len;
   new_data->data[0] = WLAN_EID_VENDOR_SPECIFIC;
   new_data->data[1] = len - 2;
   new_data->data[2] = (WLAN_OUI_WFA >> 16) & 0xff;
   new_data->data[3] = (WLAN_OUI_WFA >> 8) & 0xff;
   new_data->data[4] = (WLAN_OUI_WFA >> 0) & 0xff;
   new_data->data[5] = WLAN_OUI_TYPE_WFA_P2P;
   memcpy(&new_data->data[6], &noa_notif->noa_attribute,
          copylen);
  }
 } else
  new_data = ((void*)0);

 rcu_assign_pointer(priv->noa_data, new_data);

 if (old_data)
  kfree_rcu(old_data, rcu_head);

 return 0;
}
