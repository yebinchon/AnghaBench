
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {unsigned char type; } ;
struct nubus_dir {int dummy; } ;


 int nubus_readdir (struct nubus_dir*,struct nubus_dirent*) ;

int
nubus_find_rsrc(struct nubus_dir* dir, unsigned char rsrc_type,
  struct nubus_dirent* ent)
{
 while (nubus_readdir(dir, ent) != -1) {
  if (ent->type == rsrc_type)
   return 0;
 }
 return -1;
}
