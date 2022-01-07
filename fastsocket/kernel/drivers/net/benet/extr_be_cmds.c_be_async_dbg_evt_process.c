
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct be_mcc_compl {int dummy; } ;
struct be_async_event_qnq {int vlan_tag; int valid; } ;
struct be_adapter {TYPE_1__* pdev; int flags; int qnq_vid; } ;
struct TYPE_2__ {int dev; } ;



 int ASYNC_TRAILER_EVENT_TYPE_MASK ;
 int ASYNC_TRAILER_EVENT_TYPE_SHIFT ;
 int BE_FLAGS_QNQ_ASYNC_EVT_RCVD ;
 int dev_warn (int *,char*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void be_async_dbg_evt_process(struct be_adapter *adapter,
  u32 trailer, struct be_mcc_compl *cmp)
{
 u8 event_type = 0;
 struct be_async_event_qnq *evt = (struct be_async_event_qnq *) cmp;

 event_type = (trailer >> ASYNC_TRAILER_EVENT_TYPE_SHIFT) &
  ASYNC_TRAILER_EVENT_TYPE_MASK;

 switch (event_type) {
 case 128:
  if (evt->valid)
   adapter->qnq_vid = le16_to_cpu(evt->vlan_tag);
  adapter->flags |= BE_FLAGS_QNQ_ASYNC_EVT_RCVD;
 break;
 default:
  dev_warn(&adapter->pdev->dev, "Unknown debug event\n");
 break;
 }
}
