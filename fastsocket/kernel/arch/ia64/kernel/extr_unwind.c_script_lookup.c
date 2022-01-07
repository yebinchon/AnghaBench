
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct unw_script {int hint; scalar_t__ coll_chain; } ;
struct unw_frame_info {int hint; unsigned long ip; unsigned long pr; size_t prev_script; } ;
struct TYPE_4__ {int collision_chain_traversals; int normal_hits; int hinted_hits; int lookups; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;
struct TYPE_6__ {unsigned short* hash; TYPE_2__ stat; struct unw_script* cache; } ;


 int STAT (int ) ;
 unsigned short UNW_CACHE_SIZE ;
 scalar_t__ UNW_DEBUG_ON (int ) ;
 scalar_t__ UNW_HASH_SIZE ;
 scalar_t__ cache_match (struct unw_script*,unsigned long,unsigned long) ;
 size_t hash (unsigned long) ;
 TYPE_3__ unw ;

__attribute__((used)) static inline struct unw_script *
script_lookup (struct unw_frame_info *info)
{
 struct unw_script *script = unw.cache + info->hint;
 unsigned short index;
 unsigned long ip, pr;

 if (UNW_DEBUG_ON(0))
  return ((void*)0);

 STAT(++unw.stat.cache.lookups);

 ip = info->ip;
 pr = info->pr;

 if (cache_match(script, ip, pr)) {
  STAT(++unw.stat.cache.hinted_hits);
  return script;
 }

 index = unw.hash[hash(ip)];
 if (index >= UNW_CACHE_SIZE)
  return ((void*)0);

 script = unw.cache + index;
 while (1) {
  if (cache_match(script, ip, pr)) {

   STAT(++unw.stat.cache.normal_hits);
   unw.cache[info->prev_script].hint = script - unw.cache;
   return script;
  }
  if (script->coll_chain >= UNW_HASH_SIZE)
   return ((void*)0);
  script = unw.cache + script->coll_chain;
  STAT(++unw.stat.cache.collision_chain_traversals);
 }
}
