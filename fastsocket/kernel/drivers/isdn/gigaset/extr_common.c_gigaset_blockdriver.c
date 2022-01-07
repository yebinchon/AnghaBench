
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {int blocked; } ;



void gigaset_blockdriver(struct gigaset_driver *drv)
{
 drv->blocked = 1;
}
