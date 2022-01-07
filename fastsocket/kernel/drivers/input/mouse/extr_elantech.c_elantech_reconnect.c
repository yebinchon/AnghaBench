
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 scalar_t__ elantech_detect (struct psmouse*,int ) ;
 scalar_t__ elantech_set_absolute_mode (struct psmouse*) ;
 int pr_err (char*) ;

__attribute__((used)) static int elantech_reconnect(struct psmouse *psmouse)
{
 if (elantech_detect(psmouse, 0))
  return -1;

 if (elantech_set_absolute_mode(psmouse)) {
  pr_err("elantech.c: failed to put touchpad back into absolute mode.\n");
  return -1;
 }

 return 0;
}
