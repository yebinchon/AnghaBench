
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capability_entry {int capability; scalar_t__ type; } ;


 struct capability_entry* capability_table ;
 int strncmp (scalar_t__,char const*,int) ;

__attribute__((used)) static int find_capability(const char *type)
{
 struct capability_entry *entry;

 for(entry = capability_table; entry->type; ++entry)
  if(!strncmp(entry->type, type, 4))
   break;
 return entry->capability;
}
