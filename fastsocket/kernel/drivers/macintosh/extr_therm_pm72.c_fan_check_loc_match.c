
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loc; } ;


 TYPE_1__* fcu_fans ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int fan_check_loc_match(const char *loc, int fan)
{
 char tmp[64];
 char *c, *e;

 strlcpy(tmp, fcu_fans[fan].loc, 64);

 c = tmp;
 for (;;) {
  e = strchr(c, ',');
  if (e)
   *e = 0;
  if (strcmp(loc, c) == 0)
   return 1;
  if (e == ((void*)0))
   break;
  c = e + 1;
 }
 return 0;
}
