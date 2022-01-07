
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cache {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ cache_get_line_size (struct cache*,unsigned int*) ;
 struct cache* index_kobj_to_cache (struct kobject*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t line_size_show(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
 unsigned int line_size;
 struct cache *cache;

 cache = index_kobj_to_cache(k);

 if (cache_get_line_size(cache, &line_size))
  return -ENODEV;

 return sprintf(buf, "%u\n", line_size);
}
