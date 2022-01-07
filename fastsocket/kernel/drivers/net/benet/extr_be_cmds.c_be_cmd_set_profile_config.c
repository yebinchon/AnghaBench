
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_4__ {int desc_len; int desc_type; } ;
struct TYPE_5__ {int flags; int unicast_mac_count; int mcc_count; int vlan_count; int mcast_mac_count; int txq_count; int rq_count; int rssq_count; int lro_count; int cq_count; int toe_conn_count; int eq_count; int link_param; int bw_min; int acpi_params; int wol_param; void* bw_max; void* vf_num; int pf_num; TYPE_1__ hdr; } ;
struct TYPE_6__ {void* domain; } ;
struct be_cmd_req_set_profile_config {TYPE_2__ nic_desc; void* desc_count; TYPE_3__ hdr; } ;
struct be_adapter {int mcc_lock; int pf_number; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int IMM ;
 int NIC_RESOURCE_DESC_TYPE_V0 ;
 int NOSV ;
 int OPCODE_COMMON_SET_PROFILE_CONFIG ;
 int QUN ;
 int RESOURCE_DESC_SIZE_V0 ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_3__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 struct be_cmd_req_set_profile_config* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_profile_config(struct be_adapter *adapter, u32 bps,
         u8 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_profile_config *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_PROFILE_CONFIG, sizeof(*req),
          wrb, ((void*)0));
 req->hdr.domain = domain;
 req->desc_count = cpu_to_le32(1);
 req->nic_desc.hdr.desc_type = NIC_RESOURCE_DESC_TYPE_V0;
 req->nic_desc.hdr.desc_len = RESOURCE_DESC_SIZE_V0;
 req->nic_desc.flags = (1 << QUN) | (1 << IMM) | (1 << NOSV);
 req->nic_desc.pf_num = adapter->pf_number;
 req->nic_desc.vf_num = domain;


 req->nic_desc.unicast_mac_count = 0xFFFF;
 req->nic_desc.mcc_count = 0xFFFF;
 req->nic_desc.vlan_count = 0xFFFF;
 req->nic_desc.mcast_mac_count = 0xFFFF;
 req->nic_desc.txq_count = 0xFFFF;
 req->nic_desc.rq_count = 0xFFFF;
 req->nic_desc.rssq_count = 0xFFFF;
 req->nic_desc.lro_count = 0xFFFF;
 req->nic_desc.cq_count = 0xFFFF;
 req->nic_desc.toe_conn_count = 0xFFFF;
 req->nic_desc.eq_count = 0xFFFF;
 req->nic_desc.link_param = 0xFF;
 req->nic_desc.bw_min = 0xFFFFFFFF;
 req->nic_desc.acpi_params = 0xFF;
 req->nic_desc.wol_param = 0x0F;


 req->nic_desc.bw_min = cpu_to_le32(bps);
 req->nic_desc.bw_max = cpu_to_le32(bps);
 status = be_mcc_notify_wait(adapter);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
