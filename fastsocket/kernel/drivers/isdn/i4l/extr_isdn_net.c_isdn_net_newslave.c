
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dev; TYPE_1__* local; } ;
typedef TYPE_2__ isdn_net_dev ;
struct TYPE_5__ {scalar_t__ master; } ;


 scalar_t__ isdn_net_device_started (TYPE_2__*) ;
 TYPE_2__* isdn_net_findif (char*) ;
 char* isdn_net_new (char*,int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *
isdn_net_newslave(char *parm)
{
 char *p = strchr(parm, ',');
 isdn_net_dev *n;
 char newname[10];

 if (p) {

  if (!strlen(p + 1))
   return ((void*)0);
  strcpy(newname, p + 1);
  *p = 0;

  if (!(n = isdn_net_findif(parm)))
   return ((void*)0);

  if (n->local->master)
   return ((void*)0);

  if (isdn_net_device_started(n))
   return ((void*)0);
  return (isdn_net_new(newname, n->dev));
 }
 return ((void*)0);
}
