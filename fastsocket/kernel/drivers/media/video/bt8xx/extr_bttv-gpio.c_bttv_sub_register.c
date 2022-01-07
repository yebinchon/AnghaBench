
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct bttv_sub_driver {TYPE_1__ drv; int wanted; } ;


 int bttv_sub_bus_type ;
 int driver_register (TYPE_1__*) ;
 int snprintf (int ,int,char*,char*) ;

int bttv_sub_register(struct bttv_sub_driver *sub, char *wanted)
{
 sub->drv.bus = &bttv_sub_bus_type;
 snprintf(sub->wanted,sizeof(sub->wanted),"%s",wanted);
 return driver_register(&sub->drv);
}
