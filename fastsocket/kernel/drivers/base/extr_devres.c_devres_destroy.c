
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dr_release_t ;
typedef int dr_match_t ;


 int ENOENT ;
 int devres_free (void*) ;
 void* devres_remove (struct device*,int ,int ,void*) ;
 scalar_t__ unlikely (int) ;

int devres_destroy(struct device *dev, dr_release_t release,
     dr_match_t match, void *match_data)
{
 void *res;

 res = devres_remove(dev, release, match, match_data);
 if (unlikely(!res))
  return -ENOENT;

 devres_free(res);
 return 0;
}
