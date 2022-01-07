
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int FSL_EMB_EVENT_RESTRICTED ;
 int FSL_EMB_EVENT_THRESH ;
 int FSL_EMB_EVENT_THRESHMUL ;
 int FSL_EMB_EVENT_VALID ;
 int num_events ;

__attribute__((used)) static u64 e500_xlate_event(u64 event_id)
{
 u32 event_low = (u32)event_id;
 u64 ret;

 if (event_low >= num_events)
  return 0;

 ret = FSL_EMB_EVENT_VALID;

 if (event_low >= 76 && event_low <= 81) {
  ret |= FSL_EMB_EVENT_RESTRICTED;
  ret |= event_id &
         (FSL_EMB_EVENT_THRESHMUL | FSL_EMB_EVENT_THRESH);
 } else if (event_id &
            (FSL_EMB_EVENT_THRESHMUL | FSL_EMB_EVENT_THRESH)) {

  return 0;
 }

 return ret;
}
