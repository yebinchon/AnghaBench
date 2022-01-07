
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_dev {int n_resources; } ;


 int macio_release_resource (struct macio_dev*,int) ;

void macio_release_resources(struct macio_dev *dev)
{
 int i;

 for (i = 0; i < dev->n_resources; i++)
  macio_release_resource(dev, i);
}
