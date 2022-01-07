
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cache_info {int dummy; } ;
struct cache_attr {int (* show ) (struct cache_info*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int stub1 (struct cache_info*,char*) ;
 struct cache_attr* to_attr (struct attribute*) ;
 struct cache_info* to_object (struct kobject*) ;

__attribute__((used)) static ssize_t cache_show(struct kobject * kobj, struct attribute * attr, char * buf)
{
 struct cache_attr *fattr = to_attr(attr);
 struct cache_info *this_leaf = to_object(kobj);
 ssize_t ret;

 ret = fattr->show ? fattr->show(this_leaf, buf) : 0;
 return ret;
}
