
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {int dummy; } ;
struct nubus_dir {int mask; scalar_t__ done; int base; int ptr; } ;
struct nubus_board {int lanes; int directory; } ;


 int nubus_get_subdir (struct nubus_dirent*,struct nubus_dir*) ;
 int nubus_readdir (struct nubus_dir*,struct nubus_dirent*) ;

int nubus_get_board_dir(const struct nubus_board* board,
   struct nubus_dir* dir)
{
 struct nubus_dirent ent;

 dir->ptr = dir->base = board->directory;
 dir->done = 0;
 dir->mask = board->lanes;



 if (nubus_readdir(dir, &ent) == -1)
  return -1;
 if (nubus_get_subdir(&ent, dir) == -1)
  return -1;
 return 0;
}
