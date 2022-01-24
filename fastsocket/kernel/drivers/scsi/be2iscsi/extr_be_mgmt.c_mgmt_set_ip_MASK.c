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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct iscsi_iface_param_info {scalar_t__ param; int /*<<< orphan*/  len; } ;
struct beiscsi_hba {int /*<<< orphan*/  interface_handle; } ;
struct be_dma_mem {struct be_cmd_set_dhcp_req* va; } ;
struct be_cmd_set_dhcp_req {int retry_count; scalar_t__ ip_type; int /*<<< orphan*/  interface_hndl; int /*<<< orphan*/  flags; } ;
struct be_cmd_rel_dhcp_req {int retry_count; scalar_t__ ip_type; int /*<<< orphan*/  interface_hndl; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {scalar_t__* addr; } ;
struct be_cmd_get_if_info_resp {TYPE_1__ ip_addr; scalar_t__ dhcp_state; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; scalar_t__ dhcp_state; } ;
typedef  int /*<<< orphan*/  if_info ;
typedef  int /*<<< orphan*/  gtway_addr_set ;

/* Variables and functions */
 scalar_t__ BE2_DHCP_V4 ; 
 scalar_t__ BE2_IPV4 ; 
 scalar_t__ BE2_IPV6 ; 
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  BLOCKING ; 
 int EIO ; 
 int /*<<< orphan*/  IP_ACTION_ADD ; 
 int /*<<< orphan*/  IP_ACTION_DEL ; 
 int /*<<< orphan*/  IP_V4_LEN ; 
 int /*<<< orphan*/  IP_V6_LEN ; 
 scalar_t__ ISCSI_BOOTPROTO_DHCP ; 
 scalar_t__ ISCSI_NET_PARAM_IPV6_ADDR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_cmd_get_if_info_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct beiscsi_hba*) ; 
 int FUNC5 (struct beiscsi_hba*,scalar_t__,struct be_cmd_get_if_info_resp*) ; 
 int FUNC6 (struct beiscsi_hba*,scalar_t__,struct be_cmd_get_if_info_resp*) ; 
 int FUNC7 (struct beiscsi_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct beiscsi_hba*,struct be_cmd_get_if_info_resp*,struct iscsi_iface_param_info*,struct iscsi_iface_param_info*,int /*<<< orphan*/ ) ; 

int FUNC9(struct beiscsi_hba *phba,
		struct iscsi_iface_param_info *ip_param,
		struct iscsi_iface_param_info *subnet_param,
		uint32_t boot_proto)
{
	struct be_cmd_get_def_gateway_resp gtway_addr_set;
	struct be_cmd_get_if_info_resp if_info;
	struct be_cmd_set_dhcp_req *dhcpreq;
	struct be_cmd_rel_dhcp_req *reldhcp;
	struct be_dma_mem nonemb_cmd;
	uint8_t *gtway_addr;
	uint32_t ip_type;
	int rc;

	if (FUNC4(phba))
		return -EIO;

	FUNC1(&if_info, 0, sizeof(if_info));
	ip_type = (ip_param->param == ISCSI_NET_PARAM_IPV6_ADDR) ?
		BE2_IPV6 : BE2_IPV4 ;

	rc = FUNC6(phba, ip_type, &if_info);
	if (rc)
		return rc;

	if (boot_proto == ISCSI_BOOTPROTO_DHCP) {
		if (if_info.dhcp_state) {
			FUNC0(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
				    "BG_%d : DHCP Already Enabled\n");
			return 0;
		}
		/* The ip_param->len is 1 in DHCP case. Setting
		   proper IP len as this it is used while
		   freeing the Static IP.
		 */
		ip_param->len = (ip_param->param == ISCSI_NET_PARAM_IPV6_ADDR) ?
				IP_V6_LEN : IP_V4_LEN;

	} else {
		if (if_info.dhcp_state) {

			FUNC1(&if_info, 0, sizeof(if_info));
			rc = FUNC2(phba, &nonemb_cmd,
				OPCODE_COMMON_ISCSI_NTWK_REL_STATELESS_IP_ADDR,
				sizeof(*reldhcp));

			if (rc)
				return rc;

			reldhcp = nonemb_cmd.va;
			reldhcp->interface_hndl = phba->interface_handle;
			reldhcp->ip_type = ip_type;

			rc = FUNC3(phba, &nonemb_cmd, NULL, 0);
			if (rc < 0) {
				FUNC0(phba, KERN_WARNING,
					    BEISCSI_LOG_CONFIG,
					    "BG_%d : Failed to Delete existing dhcp\n");
				return rc;
			}
		}
	}

	/* Delete the Static IP Set */
	if (if_info.ip_addr.addr[0]) {
		rc = FUNC8(phba, &if_info, ip_param, NULL,
					   IP_ACTION_DEL);
		if (rc)
			return rc;
	}

	/* Delete the Gateway settings if mode change is to DHCP */
	if (boot_proto == ISCSI_BOOTPROTO_DHCP) {
		FUNC1(&gtway_addr_set, 0, sizeof(gtway_addr_set));
		rc = FUNC5(phba, BE2_IPV4, &gtway_addr_set);
		if (rc) {
			FUNC0(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
				    "BG_%d : Failed to Get Gateway Addr\n");
			return rc;
		}

		if (gtway_addr_set.ip_addr.addr[0]) {
			gtway_addr = (uint8_t *)&gtway_addr_set.ip_addr.addr;
			rc = FUNC7(phba, gtway_addr,
						 IP_ACTION_DEL, IP_V4_LEN);

			if (rc) {
				FUNC0(phba, KERN_WARNING,
					    BEISCSI_LOG_CONFIG,
					    "BG_%d : Failed to clear Gateway Addr Set\n");
				return rc;
			}
		}
	}

	/* Set Adapter to DHCP/Static Mode */
	if (boot_proto == ISCSI_BOOTPROTO_DHCP) {
		rc = FUNC2(phba, &nonemb_cmd,
			OPCODE_COMMON_ISCSI_NTWK_CONFIG_STATELESS_IP_ADDR,
			sizeof(*dhcpreq));
		if (rc)
			return rc;

		dhcpreq = nonemb_cmd.va;
		dhcpreq->flags = BLOCKING;
		dhcpreq->retry_count = 1;
		dhcpreq->interface_hndl = phba->interface_handle;
		dhcpreq->ip_type = BE2_DHCP_V4;

		return FUNC3(phba, &nonemb_cmd, NULL, 0);
	} else {
		return FUNC8(phba, &if_info, ip_param,
					     subnet_param, IP_ACTION_ADD);
	}

	return rc;
}