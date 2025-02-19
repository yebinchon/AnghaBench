
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int* event_masks; } ;



__attribute__((used)) static void
_base_unmask_events(struct MPT2SAS_ADAPTER *ioc, u16 event)
{
 u32 desired_event;

 if (event >= 128)
  return;

 desired_event = (1 << (event % 32));

 if (event < 32)
  ioc->event_masks[0] &= ~desired_event;
 else if (event < 64)
  ioc->event_masks[1] &= ~desired_event;
 else if (event < 96)
  ioc->event_masks[2] &= ~desired_event;
 else if (event < 128)
  ioc->event_masks[3] &= ~desired_event;
}
