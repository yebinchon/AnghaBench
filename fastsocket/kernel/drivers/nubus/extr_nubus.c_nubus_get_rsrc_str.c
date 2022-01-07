
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_dirent {int mask; } ;


 unsigned char* nubus_dirptr (struct nubus_dirent const*) ;
 unsigned char nubus_get_rom (unsigned char**,int,int ) ;

void nubus_get_rsrc_str(void *dest, const struct nubus_dirent* dirent,
   int len)
{
 unsigned char *t=(unsigned char *)dest;
 unsigned char *p = nubus_dirptr(dirent);
 while(len)
 {
  *t = nubus_get_rom(&p, 1, dirent->mask);
  if(!*t++)
   break;
  len--;
 }
}
