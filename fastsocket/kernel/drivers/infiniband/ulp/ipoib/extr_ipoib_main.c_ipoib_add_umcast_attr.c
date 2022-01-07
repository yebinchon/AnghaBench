
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;


 int dev_attr_umcast ;
 int device_create_file (int *,int *) ;

int ipoib_add_umcast_attr(struct net_device *dev)
{
 return device_create_file(&dev->dev, &dev_attr_umcast);
}
