
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; int tbi_compatibility_en; int device_id; void* media_type; } ;




 int E1000_STATUS_TBIMODE ;
 int STATUS ;


 scalar_t__ e1000_82543 ;

 void* e1000_media_type_copper ;
 void* e1000_media_type_fiber ;
 void* e1000_media_type_internal_serdes ;
 int e_dbg (char*) ;
 int er32 (int ) ;

void e1000_set_media_type(struct e1000_hw *hw)
{
 u32 status;

 e_dbg("e1000_set_media_type");

 if (hw->mac_type != e1000_82543) {

  hw->tbi_compatibility_en = 0;
 }

 switch (hw->device_id) {
 case 132:
 case 131:
  hw->media_type = e1000_media_type_internal_serdes;
  break;
 default:
  switch (hw->mac_type) {
  case 130:
  case 129:
   hw->media_type = e1000_media_type_fiber;
   break;
  case 128:
   hw->media_type = e1000_media_type_copper;
   break;
  default:
   status = er32(STATUS);
   if (status & E1000_STATUS_TBIMODE) {
    hw->media_type = e1000_media_type_fiber;

    hw->tbi_compatibility_en = 0;
   } else {
    hw->media_type = e1000_media_type_copper;
   }
   break;
  }
 }
}
