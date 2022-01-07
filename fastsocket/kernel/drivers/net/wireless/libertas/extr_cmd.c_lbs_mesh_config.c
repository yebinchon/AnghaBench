
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mrvl_meshie_val {int dummy; } ;
struct TYPE_2__ {int* oui; int mesh_id; scalar_t__ mesh_id_len; int mesh_capability; int active_metric_id; int active_protocol_id; int version; int subtype; int type; } ;
struct mrvl_meshie {scalar_t__ len; TYPE_1__ val; int id; } ;
struct lbs_private {int mesh_tlv; scalar_t__ mesh_ssid_len; int mesh_ssid; } ;
struct cmd_ds_mesh_config {void* length; scalar_t__ data; void* channel; } ;
typedef int cmd ;




 int DECLARE_SSID_BUF (int ) ;
 int IW_ESSID_MAX_SIZE ;
 int MARVELL_MESH_CAPABILITY ;
 int MARVELL_MESH_IE_SUBTYPE ;
 int MARVELL_MESH_IE_TYPE ;
 int MARVELL_MESH_IE_VERSION ;
 int MARVELL_MESH_METRIC_ID ;
 int MARVELL_MESH_PROTO_ID_HWMP ;
 int WLAN_EID_GENERIC ;
 int __lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int,int ) ;
 void* cpu_to_le16 (int) ;
 int lbs_deb_cmd (char*,int,int ,int,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;
 int print_ssid (int ,int ,scalar_t__) ;
 int ssid ;

int lbs_mesh_config(struct lbs_private *priv, uint16_t action, uint16_t chan)
{
 struct cmd_ds_mesh_config cmd;
 struct mrvl_meshie *ie;
 DECLARE_SSID_BUF(ssid);

 memset(&cmd, 0, sizeof(cmd));
 cmd.channel = cpu_to_le16(chan);
 ie = (struct mrvl_meshie *)cmd.data;

 switch (action) {
 case 129:
  ie->id = WLAN_EID_GENERIC;
  ie->val.oui[0] = 0x00;
  ie->val.oui[1] = 0x50;
  ie->val.oui[2] = 0x43;
  ie->val.type = MARVELL_MESH_IE_TYPE;
  ie->val.subtype = MARVELL_MESH_IE_SUBTYPE;
  ie->val.version = MARVELL_MESH_IE_VERSION;
  ie->val.active_protocol_id = MARVELL_MESH_PROTO_ID_HWMP;
  ie->val.active_metric_id = MARVELL_MESH_METRIC_ID;
  ie->val.mesh_capability = MARVELL_MESH_CAPABILITY;
  ie->val.mesh_id_len = priv->mesh_ssid_len;
  memcpy(ie->val.mesh_id, priv->mesh_ssid, priv->mesh_ssid_len);
  ie->len = sizeof(struct mrvl_meshie_val) -
   IW_ESSID_MAX_SIZE + priv->mesh_ssid_len;
  cmd.length = cpu_to_le16(sizeof(struct mrvl_meshie_val));
  break;
 case 128:
  break;
 default:
  return -1;
 }
 lbs_deb_cmd("mesh config action %d type %x channel %d SSID %s\n",
      action, priv->mesh_tlv, chan,
      print_ssid(ssid, priv->mesh_ssid, priv->mesh_ssid_len));

 return __lbs_mesh_config_send(priv, &cmd, action, priv->mesh_tlv);
}
