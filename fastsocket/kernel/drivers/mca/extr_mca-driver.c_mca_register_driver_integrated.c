
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_driver {int integrated_id; } ;


 int mca_register_driver (struct mca_driver*) ;

int mca_register_driver_integrated(struct mca_driver *mca_driver,
       int integrated_id)
{
 int r = mca_register_driver(mca_driver);

 if (!r)
  mca_driver->integrated_id = integrated_id;

 return r;
}
