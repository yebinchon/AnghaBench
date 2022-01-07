
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dummy; } ;
struct resource {int dummy; } ;


 int kfree (struct resource*) ;
 int release_resource (struct resource*) ;

int rio_release_outb_dbell(struct rio_dev *rdev, struct resource *res)
{
 int rc = release_resource(res);

 kfree(res);

 return rc;
}
