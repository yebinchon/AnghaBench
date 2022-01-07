
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_dev {int n_resources; } ;


 int EBUSY ;
 int macio_release_resource (struct macio_dev*,int) ;
 scalar_t__ macio_request_resource (struct macio_dev*,int,char const*) ;

int macio_request_resources(struct macio_dev *dev, const char *name)
{
 int i;

 for (i = 0; i < dev->n_resources; i++)
  if (macio_request_resource(dev, i, name))
   goto err_out;
 return 0;

err_out:
 while(--i >= 0)
  macio_release_resource(dev, i);

 return -EBUSY;
}
