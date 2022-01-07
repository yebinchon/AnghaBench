
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int ib_dev; } ;


 int ib_unregister_device (int *) ;
 int mthca_stop_catas_poll (struct mthca_dev*) ;

void mthca_unregister_device(struct mthca_dev *dev)
{
 mthca_stop_catas_poll(dev);
 ib_unregister_device(&dev->ib_dev);
}
