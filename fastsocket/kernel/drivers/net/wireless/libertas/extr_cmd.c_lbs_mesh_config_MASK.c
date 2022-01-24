#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct mrvl_meshie_val {int dummy; } ;
struct TYPE_2__ {int* oui; int /*<<< orphan*/  mesh_id; scalar_t__ mesh_id_len; int /*<<< orphan*/  mesh_capability; int /*<<< orphan*/  active_metric_id; int /*<<< orphan*/  active_protocol_id; int /*<<< orphan*/  version; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct mrvl_meshie {scalar_t__ len; TYPE_1__ val; int /*<<< orphan*/  id; } ;
struct lbs_private {int /*<<< orphan*/  mesh_tlv; scalar_t__ mesh_ssid_len; int /*<<< orphan*/  mesh_ssid; } ;
struct cmd_ds_mesh_config {void* length; scalar_t__ data; void* channel; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
#define  CMD_ACT_MESH_CONFIG_START 129 
#define  CMD_ACT_MESH_CONFIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  MARVELL_MESH_CAPABILITY ; 
 int /*<<< orphan*/  MARVELL_MESH_IE_SUBTYPE ; 
 int /*<<< orphan*/  MARVELL_MESH_IE_TYPE ; 
 int /*<<< orphan*/  MARVELL_MESH_IE_VERSION ; 
 int /*<<< orphan*/  MARVELL_MESH_METRIC_ID ; 
 int /*<<< orphan*/  MARVELL_MESH_PROTO_ID_HWMP ; 
 int /*<<< orphan*/  WLAN_EID_GENERIC ; 
 int FUNC1 (struct lbs_private*,struct cmd_ds_mesh_config*,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ssid ; 

int FUNC7(struct lbs_private *priv, uint16_t action, uint16_t chan)
{
	struct cmd_ds_mesh_config cmd;
	struct mrvl_meshie *ie;
	FUNC0(ssid);

	FUNC5(&cmd, 0, sizeof(cmd));
	cmd.channel = FUNC2(chan);
	ie = (struct mrvl_meshie *)cmd.data;

	switch (action) {
	case CMD_ACT_MESH_CONFIG_START:
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
		FUNC4(ie->val.mesh_id, priv->mesh_ssid, priv->mesh_ssid_len);
		ie->len = sizeof(struct mrvl_meshie_val) -
			IW_ESSID_MAX_SIZE + priv->mesh_ssid_len;
		cmd.length = FUNC2(sizeof(struct mrvl_meshie_val));
		break;
	case CMD_ACT_MESH_CONFIG_STOP:
		break;
	default:
		return -1;
	}
	FUNC3("mesh config action %d type %x channel %d SSID %s\n",
		    action, priv->mesh_tlv, chan,
		    FUNC6(ssid, priv->mesh_ssid, priv->mesh_ssid_len));

	return FUNC1(priv, &cmd, action, priv->mesh_tlv);
}