
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct TYPE_4__ {int fc_autoneg; } ;
struct be_adapter {int function_caps; scalar_t__ rx_fc; scalar_t__ tx_fc; TYPE_2__ phy; int netdev; scalar_t__ vlans_added; int fw_on_flash; int fw_ver; int cmd_privileges; int if_handle; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int BE_FUNCTION_CAPS_RSS ;
 scalar_t__ BE_IF_FLAGS_BROADCAST ;
 scalar_t__ BE_IF_FLAGS_MULTICAST ;
 scalar_t__ BE_IF_FLAGS_PASS_L3L4_ERRORS ;
 scalar_t__ BE_IF_FLAGS_RSS ;
 scalar_t__ BE_IF_FLAGS_UNTAGGED ;
 int MAX_PRIVILEGES ;
 int be_clear (struct be_adapter*) ;
 int be_cmd_get_flow_control (struct be_adapter*,scalar_t__*,scalar_t__*) ;
 int be_cmd_get_fn_privileges (struct be_adapter*,int *,int ) ;
 int be_cmd_get_fw_ver (struct be_adapter*,int ,int ) ;
 int be_cmd_get_phy_info (struct be_adapter*) ;
 int be_cmd_if_create (struct be_adapter*,scalar_t__,scalar_t__,int *,int ) ;
 int be_cmd_req_native_mode (struct be_adapter*) ;
 int be_cmd_set_flow_control (struct be_adapter*,scalar_t__,scalar_t__) ;
 int be_get_config (struct be_adapter*) ;
 scalar_t__ be_if_cap_flags (struct be_adapter*) ;
 scalar_t__ be_is_mc (struct be_adapter*) ;
 int be_mac_setup (struct be_adapter*) ;
 scalar_t__ be_max_vfs (struct be_adapter*) ;
 int be_msix_enable (struct be_adapter*) ;
 scalar_t__ be_pause_supported (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int be_schedule_worker (struct be_adapter*) ;
 int be_set_rx_mode (int ) ;
 int be_setup_init (struct be_adapter*) ;
 int be_setup_queues (struct be_adapter*) ;
 int be_vf_setup (struct be_adapter*) ;
 int be_vid_config (struct be_adapter*) ;
 int dev_warn (struct device*,char*) ;
 int lancer_chip (struct be_adapter*) ;
 scalar_t__ num_vfs ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int be_setup(struct be_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;
 u32 tx_fc, rx_fc, en_flags;
 int status;

 be_setup_init(adapter);

 if (!lancer_chip(adapter))
  be_cmd_req_native_mode(adapter);

 status = be_get_config(adapter);
 if (status)
  goto err;

 status = be_msix_enable(adapter);
 if (status)
  goto err;

 en_flags = BE_IF_FLAGS_UNTAGGED | BE_IF_FLAGS_BROADCAST |
     BE_IF_FLAGS_MULTICAST | BE_IF_FLAGS_PASS_L3L4_ERRORS;
 if (adapter->function_caps & BE_FUNCTION_CAPS_RSS)
  en_flags |= BE_IF_FLAGS_RSS;
 en_flags = en_flags & be_if_cap_flags(adapter);
 status = be_cmd_if_create(adapter, be_if_cap_flags(adapter), en_flags,
      &adapter->if_handle, 0);
 if (status)
  goto err;


 rtnl_lock();
 status = be_setup_queues(adapter);
 rtnl_unlock();
 if (status)
  goto err;

 be_cmd_get_fn_privileges(adapter, &adapter->cmd_privileges, 0);



 if (be_is_mc(adapter))
  adapter->cmd_privileges = MAX_PRIVILEGES;

 status = be_mac_setup(adapter);
 if (status)
  goto err;

 be_cmd_get_fw_ver(adapter, adapter->fw_ver, adapter->fw_on_flash);

 if (adapter->vlans_added)
  be_vid_config(adapter);

 be_set_rx_mode(adapter->netdev);

 be_cmd_get_flow_control(adapter, &tx_fc, &rx_fc);

 if (rx_fc != adapter->rx_fc || tx_fc != adapter->tx_fc)
  be_cmd_set_flow_control(adapter, adapter->tx_fc,
     adapter->rx_fc);

 if (be_physfn(adapter) && num_vfs) {
  if (be_max_vfs(adapter))
   be_vf_setup(adapter);
  else
   dev_warn(dev, "device doesn't support SRIOV\n");
 }

 status = be_cmd_get_phy_info(adapter);
 if (!status && be_pause_supported(adapter))
  adapter->phy.fc_autoneg = 1;

 be_schedule_worker(adapter);
 return 0;
err:
 be_clear(adapter);
 return status;
}
