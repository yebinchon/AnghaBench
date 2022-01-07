
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * get_firmware_version; int * setup_link; int * check_link; int (* identify ) (struct ixgbe_hw*) ;int * write_i2c_byte; int * read_i2c_byte; } ;
struct ixgbe_phy_info {int qsfp_shared_i2c_bus; int type; TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;int * get_link_capabilities; int * setup_link; } ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 scalar_t__ IXGBE_DEV_ID_82599_QSFP_SF_QP ;
 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP0 ;
 int IXGBE_ESDP_SDP0_DIR ;
 int IXGBE_ESDP_SDP0_NATIVE ;
 int IXGBE_ESDP_SDP1_DIR ;
 int IXGBE_ESDP_SDP1_NATIVE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_check_phy_link_tnx ;
 int ixgbe_get_copper_link_capabilities_generic ;
 int ixgbe_get_phy_firmware_version_tnx ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_media_type_copper ;

 int ixgbe_read_i2c_byte_82599 ;
 int ixgbe_setup_copper_link_82599 ;
 int ixgbe_setup_phy_link_tnx ;
 int ixgbe_write_i2c_byte_82599 ;
 int stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_init_phy_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 s32 ret_val = 0;
 u32 esdp;

 if (hw->device_id == IXGBE_DEV_ID_82599_QSFP_SF_QP) {

  hw->phy.qsfp_shared_i2c_bus = 1;


  esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
  esdp |= IXGBE_ESDP_SDP0_DIR;
  esdp &= ~IXGBE_ESDP_SDP1_DIR;
  esdp &= ~IXGBE_ESDP_SDP0;
  esdp &= ~IXGBE_ESDP_SDP0_NATIVE;
  esdp &= ~IXGBE_ESDP_SDP1_NATIVE;
  IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
  IXGBE_WRITE_FLUSH(hw);

  phy->ops.read_i2c_byte = &ixgbe_read_i2c_byte_82599;
  phy->ops.write_i2c_byte = &ixgbe_write_i2c_byte_82599;
 }


 ret_val = phy->ops.identify(hw);


 ixgbe_init_mac_link_ops_82599(hw);


 if (mac->ops.get_media_type(hw) == ixgbe_media_type_copper) {
  mac->ops.setup_link = &ixgbe_setup_copper_link_82599;
  mac->ops.get_link_capabilities =
   &ixgbe_get_copper_link_capabilities_generic;
 }


 switch (hw->phy.type) {
 case 128:
  phy->ops.check_link = &ixgbe_check_phy_link_tnx;
  phy->ops.setup_link = &ixgbe_setup_phy_link_tnx;
  phy->ops.get_firmware_version =
               &ixgbe_get_phy_firmware_version_tnx;
  break;
 default:
  break;
 }

 return ret_val;
}
