
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faulty_conf {int nfaults; scalar_t__* faults; int* modes; } ;
typedef scalar_t__ sector_t ;


 void* AllPersist ;
 int MaxFault ;





__attribute__((used)) static void add_sector(struct faulty_conf *conf, sector_t start, int mode)
{
 int i;
 int n = conf->nfaults;
 for (i=0; i<conf->nfaults; i++)
  if (conf->faults[i] == start) {
   switch(mode) {
   case 131: conf->modes[i] = mode; return;
   case 128:
    if (conf->modes[i] == 129 ||
        conf->modes[i] == 130)
     conf->modes[i] = AllPersist;
    else
     conf->modes[i] = 128;
    return;
   case 129:
    if (conf->modes[i] == 128)
     conf->modes[i] = AllPersist;
    else
     conf->modes[i] = 129;
    return;
   case 130:
    if (conf->modes[i] == 128 ||
        conf->modes[i] == 129)
     conf->modes[i] = AllPersist;
    else
     conf->modes[i] = 130;
    return;
   }
  } else if (conf->modes[i] == 131)
   n = i;

 if (n >= MaxFault)
  return;
 conf->faults[n] = start;
 conf->modes[n] = mode;
 if (conf->nfaults == n)
  conf->nfaults = n+1;
}
