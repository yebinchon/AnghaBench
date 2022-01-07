
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {int shared_cpu_map; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int cpumask_scnprintf (char*,int,int *) ;
 struct cache_index_dir* kobj_to_cache_index_dir (struct kobject*) ;

__attribute__((used)) static ssize_t shared_cpu_map_show(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
 struct cache_index_dir *index;
 struct cache *cache;
 int len;
 int n = 0;

 index = kobj_to_cache_index_dir(k);
 cache = index->cache;
 len = PAGE_SIZE - 2;

 if (len > 1) {
  n = cpumask_scnprintf(buf, len, &cache->shared_cpu_map);
  buf[n++] = '\n';
  buf[n] = '\0';
 }
 return n;
}
