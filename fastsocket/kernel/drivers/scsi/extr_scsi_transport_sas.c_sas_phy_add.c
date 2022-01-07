
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int dev; } ;


 int device_add (int *) ;
 int transport_add_device (int *) ;
 int transport_configure_device (int *) ;

int sas_phy_add(struct sas_phy *phy)
{
 int error;

 error = device_add(&phy->dev);
 if (!error) {
  transport_add_device(&phy->dev);
  transport_configure_device(&phy->dev);
 }

 return error;
}
