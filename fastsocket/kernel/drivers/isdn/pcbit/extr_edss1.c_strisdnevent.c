
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
struct isdn_event_desc {scalar_t__ ev; char* desc; } ;


 struct isdn_event_desc* isdn_event_table ;

char * strisdnevent(ushort ev)
{
  struct isdn_event_desc * entry;

  for (entry = isdn_event_table; entry->ev; entry++)
    if (entry->ev == ev)
      break;

  return entry->desc;
}
