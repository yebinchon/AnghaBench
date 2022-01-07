
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nubus_dir {int mask; scalar_t__ done; int base; int ptr; } ;
struct nubus_dev {TYPE_1__* board; int directory; } ;
struct TYPE_2__ {int lanes; } ;



int nubus_get_func_dir(const struct nubus_dev* dev,
         struct nubus_dir* dir)
{
 dir->ptr = dir->base = dev->directory;
 dir->done = 0;
 dir->mask = dev->board->lanes;
 return 0;
}
