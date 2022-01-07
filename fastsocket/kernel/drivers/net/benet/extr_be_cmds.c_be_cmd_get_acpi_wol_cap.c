
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_cmd_req_acpi_wol_magic_config_v1* va; } ;
struct TYPE_5__ {int response_length; } ;
struct be_cmd_resp_acpi_wol_magic_config_v1 {int wol_settings; TYPE_1__ hdr; } ;
struct TYPE_7__ {int version; } ;
struct be_cmd_req_acpi_wol_magic_config_v1 {int query_options; TYPE_4__ hdr; } ;
struct be_adapter {TYPE_2__* pdev; int mbox_lock; int wol_cap; } ;
struct TYPE_6__ {int dev; } ;


 int BE_GET_WOL_CAP ;
 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG ;
 int be_cmd_allowed (struct be_adapter*,int ,int ) ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_4__*,int ,int ,int,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int dev_err (int *,char*) ;
 int memset (struct be_dma_mem*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_cmd_req_acpi_wol_magic_config_v1* pci_alloc_consistent (TYPE_2__*,int,int *) ;
 int pci_free_consistent (TYPE_2__*,int,struct be_cmd_req_acpi_wol_magic_config_v1*,int ) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_acpi_wol_magic_config_v1 *req;
 int status;
 int payload_len = sizeof(*req);
 struct be_dma_mem cmd;

 if (!be_cmd_allowed(adapter, OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
       CMD_SUBSYSTEM_ETH))
  return -EPERM;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 memset(&cmd, 0, sizeof(struct be_dma_mem));
 cmd.size = sizeof(struct be_cmd_resp_acpi_wol_magic_config_v1);
 cmd.va = pci_alloc_consistent(adapter->pdev, cmd.size,
            &cmd.dma);
 if (!cmd.va) {
  dev_err(&adapter->pdev->dev,
    "Memory allocation failure\n");
  status = -ENOMEM;
  goto err;
 }

 wrb = wrb_from_mbox(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = cmd.va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
          OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
          payload_len, wrb, &cmd);

 req->hdr.version = 1;
 req->query_options = BE_GET_WOL_CAP;

 status = be_mbox_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_acpi_wol_magic_config_v1 *resp;
  resp = (struct be_cmd_resp_acpi_wol_magic_config_v1 *) cmd.va;



  if (resp->hdr.response_length < payload_len) {
   status = -1;
   goto err;
  }
  adapter->wol_cap = resp->wol_settings;
 }
err:
 mutex_unlock(&adapter->mbox_lock);
 if (cmd.va)
  pci_free_consistent(adapter->pdev, cmd.size, cmd.va, cmd.dma);
 return status;

}
