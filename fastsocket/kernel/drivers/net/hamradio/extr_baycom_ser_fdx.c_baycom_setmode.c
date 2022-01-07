
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct baycom_state {unsigned int baud; int opt_dcd; } ;


 unsigned int simple_strtoul (char const*,int *,int) ;
 scalar_t__ strchr (char const*,char) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int baycom_setmode(struct baycom_state *bc, const char *modestr)
{
 unsigned int baud;

 if (!strncmp(modestr, "ser", 3)) {
  baud = simple_strtoul(modestr+3, ((void*)0), 10);
  if (baud >= 3 && baud <= 48)
   bc->baud = baud*100;
 }
 if (strchr(modestr, '*'))
  bc->opt_dcd = 0;
 else if (strchr(modestr, '+'))
  bc->opt_dcd = -1;
 else
  bc->opt_dcd = 1;
 return 0;
}
