
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** msn2eaz; } ;
typedef TYPE_1__ isdn_driver_t ;
struct TYPE_4__ {TYPE_1__** drv; } ;


 TYPE_2__* dev ;
 int strlen (char*) ;

char *
isdn_map_eaz2msn(char *msn, int di)
{
 isdn_driver_t *this = dev->drv[di];
 int i;

 if (strlen(msn) == 1) {
  i = msn[0] - '0';
  if ((i >= 0) && (i <= 9))
   if (strlen(this->msn2eaz[i]))
    return (this->msn2eaz[i]);
 }
 return (msn);
}
