
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_1__ phy; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;
 int ixgbe_media_type_backplane ;
 int ixgbe_media_type_copper ;
 int ixgbe_media_type_cx4 ;
 int ixgbe_media_type_fiber ;
 int ixgbe_media_type_fiber_lco ;
 int ixgbe_media_type_fiber_qsfp ;
 int ixgbe_media_type_unknown ;



__attribute__((used)) static enum ixgbe_media_type ixgbe_get_media_type_82599(struct ixgbe_hw *hw)
{
 enum ixgbe_media_type media_type;


 switch (hw->phy.type) {
 case 129:
 case 128:
  media_type = ixgbe_media_type_copper;
  goto out;
 default:
  break;
 }

 switch (hw->device_id) {
 case 140:
 case 139:
 case 143:
 case 141:
 case 144:
 case 130:

  media_type = ixgbe_media_type_backplane;
  break;
 case 136:
 case 134:
 case 135:
 case 133:
 case 132:
 case 145:
  media_type = ixgbe_media_type_fiber;
  break;
 case 142:
  media_type = ixgbe_media_type_cx4;
  break;
 case 131:
  media_type = ixgbe_media_type_copper;
  break;
 case 138:
  media_type = ixgbe_media_type_fiber_lco;
  break;
 case 137:
  media_type = ixgbe_media_type_fiber_qsfp;
  break;
 default:
  media_type = ixgbe_media_type_unknown;
  break;
 }
out:
 return media_type;
}
