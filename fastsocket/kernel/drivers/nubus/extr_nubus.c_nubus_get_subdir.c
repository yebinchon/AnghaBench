
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {int mask; } ;
struct nubus_dir {int mask; scalar_t__ done; int base; int ptr; } ;


 int nubus_dirptr (struct nubus_dirent const*) ;

int nubus_get_subdir(const struct nubus_dirent *ent,
       struct nubus_dir *dir)
{
 dir->ptr = dir->base = nubus_dirptr(ent);
 dir->done = 0;
 dir->mask = ent->mask;
 return 0;
}
