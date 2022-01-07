
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da903x_chip {int dev; } ;


 int __remove_subdev ;
 int device_for_each_child (int ,int *,int ) ;

__attribute__((used)) static int da903x_remove_subdevs(struct da903x_chip *chip)
{
 return device_for_each_child(chip->dev, ((void*)0), __remove_subdev);
}
