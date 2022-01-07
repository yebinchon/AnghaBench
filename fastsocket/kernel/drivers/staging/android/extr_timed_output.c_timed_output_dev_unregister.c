
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timed_output_dev {int dev; int index; } ;


 int MKDEV (int ,int ) ;
 int dev_attr_enable ;
 int dev_set_drvdata (int ,int *) ;
 int device_destroy (int ,int ) ;
 int device_remove_file (int ,int *) ;
 int timed_output_class ;

void timed_output_dev_unregister(struct timed_output_dev *tdev)
{
 device_remove_file(tdev->dev, &dev_attr_enable);
 device_destroy(timed_output_class, MKDEV(0, tdev->index));
 dev_set_drvdata(tdev->dev, ((void*)0));
}
