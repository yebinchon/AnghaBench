
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {struct be_cmd_req_acpi_wol_magic_config* va; } ;
struct be_cmd_req_acpi_wol_magic_config {int magic_mac; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int ETH_ALEN ;
 int OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int memcpy (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_enable_magic_wol(struct be_adapter *adapter, u8 *mac,
    struct be_dma_mem *nonemb_cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_acpi_wol_magic_config *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = nonemb_cmd->va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
  OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, sizeof(*req), wrb,
  nonemb_cmd);
 memcpy(req->magic_mac, mac, ETH_ALEN);

 status = be_mcc_notify_wait(adapter);

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
