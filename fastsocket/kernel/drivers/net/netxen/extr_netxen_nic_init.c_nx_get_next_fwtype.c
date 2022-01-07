
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int fw_type; TYPE_1__ ahw; } ;


 int NX_FLASH_ROMIMAGE ;
 int NX_IS_REVISION_P2 (int ) ;
 int NX_IS_REVISION_P3P (int ) ;





 int netxen_p3_has_mn (struct netxen_adapter*) ;

__attribute__((used)) static void
nx_get_next_fwtype(struct netxen_adapter *adapter)
{
 u8 fw_type;

 switch (adapter->fw_type) {
 case 128:
  fw_type = 129;
  break;

 case 129:
  if (NX_IS_REVISION_P3P(adapter->ahw.revision_id))
   fw_type = NX_FLASH_ROMIMAGE;
  else if (NX_IS_REVISION_P2(adapter->ahw.revision_id))
   fw_type = 132;
  else if (netxen_p3_has_mn(adapter))
   fw_type = 130;
  else
   fw_type = 131;
  break;

 case 130:
  fw_type = 131;
  break;

 case 132:
 case 131:
 default:
  fw_type = NX_FLASH_ROMIMAGE;
  break;
 }

 adapter->fw_type = fw_type;
}
