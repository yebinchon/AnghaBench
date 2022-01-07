
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devt; } ;
typedef int dev_t ;



__attribute__((used)) static int __match_devt(struct device *dev, void *data)
{
 dev_t *devt = data;

 return dev->devt == *devt;
}
