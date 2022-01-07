
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int capabilities2; int capabilities; } ;


 int QLCNIC_FW_CAPABILITY_2_LRO_MAX_TCP_SEG ;
 int QLCNIC_FW_LRO_MSS_CAP ;
 scalar_t__ QLC_83XX_GET_FW_LRO_MSS_CAPABILITY (int ) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_get_lro_mss_capability(struct qlcnic_adapter *adapter)
{
 u32 capab = 0;

 if (qlcnic_82xx_check(adapter)) {
  if (adapter->ahw->capabilities2 &
      QLCNIC_FW_CAPABILITY_2_LRO_MAX_TCP_SEG)
   adapter->flags |= QLCNIC_FW_LRO_MSS_CAP;
 } else {
  capab = adapter->ahw->capabilities;
  if (QLC_83XX_GET_FW_LRO_MSS_CAPABILITY(capab))
   adapter->flags |= QLCNIC_FW_LRO_MSS_CAP;
 }
}
