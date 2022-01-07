
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int original; int alternative; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int P4_CONFIG_ALIASABLE ;
 int P4_CONFIG_EVENT_ALIAS_IMMUTABLE_BITS ;
 int P4_CONFIG_EVENT_ALIAS_MASK ;
 TYPE_1__* p4_event_aliases ;

__attribute__((used)) static u64 p4_get_alias_event(u64 config)
{
 u64 config_match;
 int i;






 if (!(config & P4_CONFIG_ALIASABLE))
  return 0;

 config_match = config & P4_CONFIG_EVENT_ALIAS_MASK;

 for (i = 0; i < ARRAY_SIZE(p4_event_aliases); i++) {
  if (config_match == p4_event_aliases[i].original) {
   config_match = p4_event_aliases[i].alternative;
   break;
  } else if (config_match == p4_event_aliases[i].alternative) {
   config_match = p4_event_aliases[i].original;
   break;
  }
 }

 if (i >= ARRAY_SIZE(p4_event_aliases))
  return 0;

 return config_match | (config & P4_CONFIG_EVENT_ALIAS_IMMUTABLE_BITS);
}
