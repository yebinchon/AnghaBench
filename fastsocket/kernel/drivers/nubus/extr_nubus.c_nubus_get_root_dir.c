
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dir {int mask; scalar_t__ done; int base; int ptr; } ;
struct nubus_board {int lanes; int directory; } ;



int nubus_get_root_dir(const struct nubus_board* board,
         struct nubus_dir* dir)
{
 dir->ptr = dir->base = board->directory;
 dir->done = 0;
 dir->mask = board->lanes;
 return 0;
}
