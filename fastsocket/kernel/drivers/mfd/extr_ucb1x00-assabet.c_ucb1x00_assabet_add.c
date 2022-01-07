
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1x00_dev {TYPE_1__* ucb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_batt_temp ;
 int dev_attr_vbatt ;
 int dev_attr_vcharger ;
 int device_create_file (int *,int *) ;

__attribute__((used)) static int ucb1x00_assabet_add(struct ucb1x00_dev *dev)
{
 device_create_file(&dev->ucb->dev, &dev_attr_vbatt);
 device_create_file(&dev->ucb->dev, &dev_attr_vcharger);
 device_create_file(&dev->ucb->dev, &dev_attr_batt_temp);
 return 0;
}
