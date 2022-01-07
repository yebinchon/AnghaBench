
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int mac_id; } ;
struct TYPE_11__ {int macaddr; TYPE_3__ s_mac_id; } ;
struct get_list_macaddr {TYPE_4__ mac_addr_id; int mac_addr_size; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_cmd_resp_get_mac_list* va; } ;
struct TYPE_8__ {int macaddr; } ;
struct TYPE_9__ {TYPE_1__ mac_addr_id; } ;
struct TYPE_13__ {int domain; } ;
struct be_cmd_resp_get_mac_list {int perm_override; int true_mac_count; int pseudo_mac_count; struct get_list_macaddr* macaddr_list; TYPE_2__ macid_macaddr; int iface_id; int mac_id; int mac_type; TYPE_7__ hdr; } ;
struct be_cmd_req_get_mac_list {int perm_override; int true_mac_count; int pseudo_mac_count; struct get_list_macaddr* macaddr_list; TYPE_2__ macid_macaddr; int iface_id; int mac_id; int mac_type; TYPE_7__ hdr; } ;
struct be_adapter {TYPE_5__* pdev; int mcc_lock; int if_handle; } ;
struct TYPE_12__ {int dev; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int ENOMEM ;
 int ETH_ALEN ;
 int MAC_ADDRESS_TYPE_NETWORK ;
 int OPCODE_COMMON_GET_MAC_LIST ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_7__*,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct be_dma_mem*,int ,int) ;
 struct be_cmd_resp_get_mac_list* pci_alloc_consistent (TYPE_5__*,int,int *) ;
 int pci_free_consistent (TYPE_5__*,int,struct be_cmd_resp_get_mac_list*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_mac_from_list(struct be_adapter *adapter, u8 *mac,
        bool *pmac_id_valid, u32 *pmac_id, u8 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_mac_list *req;
 int status;
 int mac_count;
 struct be_dma_mem get_mac_list_cmd;
 int i;

 memset(&get_mac_list_cmd, 0, sizeof(struct be_dma_mem));
 get_mac_list_cmd.size = sizeof(struct be_cmd_resp_get_mac_list);
 get_mac_list_cmd.va = pci_alloc_consistent(adapter->pdev,
   get_mac_list_cmd.size,
   &get_mac_list_cmd.dma);

 if (!get_mac_list_cmd.va) {
  dev_err(&adapter->pdev->dev,
    "Memory allocation failure during GET_MAC_LIST\n");
  return -ENOMEM;
 }

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto out;
 }

 req = get_mac_list_cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_MAC_LIST,
          get_mac_list_cmd.size, wrb, &get_mac_list_cmd);
 req->hdr.domain = domain;
 req->mac_type = MAC_ADDRESS_TYPE_NETWORK;
 if (*pmac_id_valid) {
  req->mac_id = cpu_to_le32(*pmac_id);
  req->iface_id = cpu_to_le16(adapter->if_handle);
  req->perm_override = 0;
 } else {
  req->perm_override = 1;
 }

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_mac_list *resp =
      get_mac_list_cmd.va;

  if (*pmac_id_valid) {
   memcpy(mac, resp->macid_macaddr.mac_addr_id.macaddr,
          ETH_ALEN);
   goto out;
  }

  mac_count = resp->true_mac_count + resp->pseudo_mac_count;





  for (i = 0; i < mac_count; i++) {
   struct get_list_macaddr *mac_entry;
   u16 mac_addr_size;
   u32 mac_id;

   mac_entry = &resp->macaddr_list[i];
   mac_addr_size = le16_to_cpu(mac_entry->mac_addr_size);



   if (mac_addr_size == sizeof(u32)) {
    *pmac_id_valid = 1;
    mac_id = mac_entry->mac_addr_id.s_mac_id.mac_id;
    *pmac_id = le32_to_cpu(mac_id);
    goto out;
   }
  }

  *pmac_id_valid = 0;
  memcpy(mac, resp->macaddr_list[0].mac_addr_id.macaddr,
        ETH_ALEN);
 }

out:
 spin_unlock_bh(&adapter->mcc_lock);
 pci_free_consistent(adapter->pdev, get_mac_list_cmd.size,
   get_mac_list_cmd.va, get_mac_list_cmd.dma);
 return status;
}
