
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache {size_t type; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* cache_type_info ;

__attribute__((used)) static const char *cache_type_string(const struct cache *cache)
{
 return cache_type_info[cache->type].name;
}
