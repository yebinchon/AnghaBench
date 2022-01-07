
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int* event_type; int event_log; } ;



__attribute__((used)) static int
_ctl_check_event_type(struct MPT2SAS_ADAPTER *ioc, u16 event)
{
 u16 i;
 u32 desired_event;

 if (event >= 128 || !event || !ioc->event_log)
  return 0;

 desired_event = (1 << (event % 32));
 if (!desired_event)
  desired_event = 1;
 i = event / 32;
 return desired_event & ioc->event_type[i];
}
