
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct be_phy_info {int misc_params; int fixed_speeds_supported; int auto_speeds_supported; int interface_type; int phy_type; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_phy_info* va; } ;
struct be_cmd_req_hdr {int dummy; } ;
struct be_cmd_req_get_phy_info {int misc_params; int fixed_speeds_supported; int auto_speeds_supported; int interface_type; int phy_type; int hdr; } ;
struct TYPE_4__ {int misc_params; void* fixed_speeds_supported; void* auto_speeds_supported; void* interface_type; void* phy_type; } ;
struct be_adapter {int mcc_lock; TYPE_2__* pdev; TYPE_1__ phy; } ;
struct TYPE_5__ {int dev; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int OPCODE_COMMON_GET_PHY_DETAILS ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct be_phy_info* pci_alloc_consistent (TYPE_2__*,int,int *) ;
 int pci_free_consistent (TYPE_2__*,int,struct be_phy_info*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_phy_info(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_phy_info *req;
 struct be_dma_mem cmd;
 int status;

 if (!be_cmd_allowed(adapter, OPCODE_COMMON_GET_PHY_DETAILS,
       CMD_SUBSYSTEM_COMMON))
  return -EPERM;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 cmd.size = sizeof(struct be_cmd_req_get_phy_info);
 cmd.va = pci_alloc_consistent(adapter->pdev, cmd.size,
     &cmd.dma);
 if (!cmd.va) {
  dev_err(&adapter->pdev->dev, "Memory alloc failure\n");
  status = -ENOMEM;
  goto err;
 }

 req = cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
   OPCODE_COMMON_GET_PHY_DETAILS, sizeof(*req),
   wrb, &cmd);

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_phy_info *resp_phy_info =
    cmd.va + sizeof(struct be_cmd_req_hdr);
  adapter->phy.phy_type = le16_to_cpu(resp_phy_info->phy_type);
  adapter->phy.interface_type =
   le16_to_cpu(resp_phy_info->interface_type);
  adapter->phy.auto_speeds_supported =
   le16_to_cpu(resp_phy_info->auto_speeds_supported);
  adapter->phy.fixed_speeds_supported =
   le16_to_cpu(resp_phy_info->fixed_speeds_supported);
  adapter->phy.misc_params =
   le32_to_cpu(resp_phy_info->misc_params);
 }
 pci_free_consistent(adapter->pdev, cmd.size,
    cmd.va, cmd.dma);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
