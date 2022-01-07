
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {scalar_t__ trkid; scalar_t__ slot; scalar_t__ mtsize; int * mt; } ;


 int kfree (int *) ;

void input_mt_destroy_slots(struct input_dev *dev)
{
 kfree(dev->mt);
 dev->mt = ((void*)0);
 dev->mtsize = 0;
 dev->slot = 0;
 dev->trkid = 0;
}
