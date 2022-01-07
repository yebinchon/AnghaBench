
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct be_mcc_compl {int dummy; } ;
struct be_async_event_grp5_qos_link_speed {int dummy; } ;
struct be_async_event_grp5_pvid_state {int dummy; } ;
struct be_async_event_grp5_cos_priority {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;





 int ASYNC_TRAILER_EVENT_TYPE_MASK ;
 int ASYNC_TRAILER_EVENT_TYPE_SHIFT ;
 int be_async_grp5_cos_priority_process (struct be_adapter*,struct be_async_event_grp5_cos_priority*) ;
 int be_async_grp5_pvid_state_process (struct be_adapter*,struct be_async_event_grp5_pvid_state*) ;
 int be_async_grp5_qos_speed_process (struct be_adapter*,struct be_async_event_grp5_qos_link_speed*) ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static void be_async_grp5_evt_process(struct be_adapter *adapter,
  u32 trailer, struct be_mcc_compl *evt)
{
 u8 event_type = 0;

 event_type = (trailer >> ASYNC_TRAILER_EVENT_TYPE_SHIFT) &
  ASYNC_TRAILER_EVENT_TYPE_MASK;

 switch (event_type) {
 case 130:
  be_async_grp5_cos_priority_process(adapter,
  (struct be_async_event_grp5_cos_priority *)evt);
 break;
 case 128:
  be_async_grp5_qos_speed_process(adapter,
  (struct be_async_event_grp5_qos_link_speed *)evt);
 break;
 case 129:
  be_async_grp5_pvid_state_process(adapter,
  (struct be_async_event_grp5_pvid_state *)evt);
 break;
 default:
  dev_warn(&adapter->pdev->dev, "Unknown grp5 event!\n");
  break;
 }
}
