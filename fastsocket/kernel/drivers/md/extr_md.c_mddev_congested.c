
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int suspended; } ;



int mddev_congested(struct mddev *mddev, int bits)
{
 return mddev->suspended;
}
