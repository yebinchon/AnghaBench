
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vtag_array ;
typedef void* u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_vlan_config {int promiscuous; int untagged; int num_vlan; int normal_vlan; void* interface_id; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_NTWK_VLAN_CONFIG ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_vlan_config* embedded_payload (struct be_mcc_wrb*) ;
 int memcpy (int ,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_vlan_config(struct be_adapter *adapter, u32 if_id, u16 *vtag_array,
   u32 num, bool untagged, bool promiscuous)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_vlan_config *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_NTWK_VLAN_CONFIG, sizeof(*req), wrb, ((void*)0));

 req->interface_id = if_id;
 req->promiscuous = promiscuous;
 req->untagged = untagged;
 req->num_vlan = num;
 if (!promiscuous) {
  memcpy(req->normal_vlan, vtag_array,
   req->num_vlan * sizeof(vtag_array[0]));
 }

 status = be_mcc_notify_wait(adapter);

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
