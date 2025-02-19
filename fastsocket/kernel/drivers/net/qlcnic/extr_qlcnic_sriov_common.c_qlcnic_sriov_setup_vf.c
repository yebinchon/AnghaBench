
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; TYPE_3__* netdev; TYPE_4__* pdev; int vf_mc_list; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_5__ {int delay; } ;
struct TYPE_6__ {TYPE_1__ idc; } ;


 int INIT_LIST_HEAD (int *) ;
 int QLCNIC_BC_CMD_CHANNEL_INIT ;
 int QLCNIC_BC_CMD_CHANNEL_TERM ;
 int __qlcnic_sriov_cleanup (struct qlcnic_adapter*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*) ;
 int pci_set_drvdata (TYPE_4__*,struct qlcnic_adapter*) ;
 int qlcnic_83xx_free_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_setup_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_schedule_work (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_setup_intr (struct qlcnic_adapter*,int) ;
 int qlcnic_setup_netdev (struct qlcnic_adapter*,TYPE_3__*,int) ;
 int qlcnic_sriov_cfg_bc_intr (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_channel_cfg_cmd (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_init (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_vf_init_driver (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_poll_dev_state ;
 int qlcnic_teardown_intr (struct qlcnic_adapter*) ;
 int qlcnic_use_msi ;
 int qlcnic_use_msi_x ;

__attribute__((used)) static int qlcnic_sriov_setup_vf(struct qlcnic_adapter *adapter,
     int pci_using_dac)
{
 int err;

 INIT_LIST_HEAD(&adapter->vf_mc_list);
 if (!qlcnic_use_msi_x && !!qlcnic_use_msi)
  dev_warn(&adapter->pdev->dev,
    "83xx adapter do not support MSI interrupts\n");

 err = qlcnic_setup_intr(adapter, 1);
 if (err) {
  dev_err(&adapter->pdev->dev, "Failed to setup interrupt\n");
  goto err_out_disable_msi;
 }

 err = qlcnic_83xx_setup_mbx_intr(adapter);
 if (err)
  goto err_out_disable_msi;

 err = qlcnic_sriov_init(adapter, 1);
 if (err)
  goto err_out_disable_mbx_intr;

 err = qlcnic_sriov_cfg_bc_intr(adapter, 1);
 if (err)
  goto err_out_cleanup_sriov;

 err = qlcnic_sriov_channel_cfg_cmd(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
 if (err)
  goto err_out_disable_bc_intr;

 err = qlcnic_sriov_vf_init_driver(adapter);
 if (err)
  goto err_out_send_channel_term;

 err = qlcnic_setup_netdev(adapter, adapter->netdev, pci_using_dac);
 if (err)
  goto err_out_send_channel_term;

 pci_set_drvdata(adapter->pdev, adapter);
 dev_info(&adapter->pdev->dev, "%s: XGbE port initialized\n",
   adapter->netdev->name);
 qlcnic_schedule_work(adapter, qlcnic_sriov_vf_poll_dev_state,
        adapter->ahw->idc.delay);
 return 0;

err_out_send_channel_term:
 qlcnic_sriov_channel_cfg_cmd(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);

err_out_disable_bc_intr:
 qlcnic_sriov_cfg_bc_intr(adapter, 0);

err_out_cleanup_sriov:
 __qlcnic_sriov_cleanup(adapter);

err_out_disable_mbx_intr:
 qlcnic_83xx_free_mbx_intr(adapter);

err_out_disable_msi:
 qlcnic_teardown_intr(adapter);
 return err;
}
