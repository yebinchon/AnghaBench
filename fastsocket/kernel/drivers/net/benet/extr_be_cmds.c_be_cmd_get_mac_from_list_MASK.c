#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_10__ {int /*<<< orphan*/  mac_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  macaddr; TYPE_3__ s_mac_id; } ;
struct get_list_macaddr {TYPE_4__ mac_addr_id; int /*<<< orphan*/  mac_addr_size; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_get_mac_list* va; } ;
struct TYPE_8__ {int /*<<< orphan*/  macaddr; } ;
struct TYPE_9__ {TYPE_1__ mac_addr_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_resp_get_mac_list {int perm_override; int true_mac_count; int pseudo_mac_count; struct get_list_macaddr* macaddr_list; TYPE_2__ macid_macaddr; int /*<<< orphan*/  iface_id; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  mac_type; TYPE_7__ hdr; } ;
struct be_cmd_req_get_mac_list {int perm_override; int true_mac_count; int pseudo_mac_count; struct get_list_macaddr* macaddr_list; TYPE_2__ macid_macaddr; int /*<<< orphan*/  iface_id; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  mac_type; TYPE_7__ hdr; } ;
struct be_adapter {TYPE_5__* pdev; int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  if_handle; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAC_ADDRESS_TYPE_NETWORK ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_MAC_LIST ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 struct be_cmd_resp_get_mac_list* FUNC9 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int,struct be_cmd_resp_get_mac_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC13 (struct be_adapter*) ; 

int FUNC14(struct be_adapter *adapter, u8 *mac,
			     bool *pmac_id_valid, u32 *pmac_id, u8 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_mac_list *req;
	int status;
	int mac_count;
	struct be_dma_mem get_mac_list_cmd;
	int i;

	FUNC8(&get_mac_list_cmd, 0, sizeof(struct be_dma_mem));
	get_mac_list_cmd.size = sizeof(struct be_cmd_resp_get_mac_list);
	get_mac_list_cmd.va = FUNC9(adapter->pdev,
			get_mac_list_cmd.size,
			&get_mac_list_cmd.dma);

	if (!get_mac_list_cmd.va) {
		FUNC4(&adapter->pdev->dev,
				"Memory allocation failure during GET_MAC_LIST\n");
		return -ENOMEM;
	}

	FUNC11(&adapter->mcc_lock);

	wrb = FUNC13(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto out;
	}

	req = get_mac_list_cmd.va;

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_MAC_LIST,
			       get_mac_list_cmd.size, wrb, &get_mac_list_cmd);
	req->hdr.domain = domain;
	req->mac_type = MAC_ADDRESS_TYPE_NETWORK;
	if (*pmac_id_valid) {
		req->mac_id = FUNC3(*pmac_id);
		req->iface_id = FUNC2(adapter->if_handle);
		req->perm_override = 0;
	} else {
		req->perm_override = 1;
	}

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_get_mac_list *resp =
						get_mac_list_cmd.va;

		if (*pmac_id_valid) {
			FUNC7(mac, resp->macid_macaddr.mac_addr_id.macaddr,
			       ETH_ALEN);
			goto out;
		}

		mac_count = resp->true_mac_count + resp->pseudo_mac_count;
		/* Mac list returned could contain one or more active mac_ids
		 * or one or more true or pseudo permanant mac addresses.
		 * If an active mac_id is present, return first active mac_id
		 * found.
		 */
		for (i = 0; i < mac_count; i++) {
			struct get_list_macaddr *mac_entry;
			u16 mac_addr_size;
			u32 mac_id;

			mac_entry = &resp->macaddr_list[i];
			mac_addr_size = FUNC5(mac_entry->mac_addr_size);
			/* mac_id is a 32 bit value and mac_addr size
			 * is 6 bytes
			 */
			if (mac_addr_size == sizeof(u32)) {
				*pmac_id_valid = true;
				mac_id = mac_entry->mac_addr_id.s_mac_id.mac_id;
				*pmac_id = FUNC6(mac_id);
				goto out;
			}
		}
		/* If no active mac_id found, return first mac addr */
		*pmac_id_valid = false;
		FUNC7(mac, resp->macaddr_list[0].mac_addr_id.macaddr,
								ETH_ALEN);
	}

out:
	FUNC12(&adapter->mcc_lock);
	FUNC10(adapter->pdev, get_mac_list_cmd.size,
			get_mac_list_cmd.va, get_mac_list_cmd.dma);
	return status;
}