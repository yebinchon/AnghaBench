
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_pio_info {int pio; int * name; } ;


 struct ide_pio_info* ide_pio_blacklist ;
 int strlen (int *) ;
 scalar_t__ strncmp (int *,char*,int ) ;

int ide_scan_pio_blacklist(char *model)
{
 struct ide_pio_info *p;

 for (p = ide_pio_blacklist; p->name != ((void*)0); p++) {
  if (strncmp(p->name, model, strlen(p->name)) == 0)
   return p->pio;
 }
 return -1;
}
