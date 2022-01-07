
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_kzalloc_match ;
 int devm_kzalloc_release ;
 int devres_destroy (struct device*,int ,int ,void*) ;

void devm_kfree(struct device *dev, void *p)
{
 int rc;

 rc = devres_destroy(dev, devm_kzalloc_release, devm_kzalloc_match, p);
 WARN_ON(rc);
}
