
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int retval; } ;


 TYPE_1__* msp_stdlist ;

const char *msp_standard_std_name(int std)
{
 int i;

 for (i = 0; msp_stdlist[i].name != ((void*)0); i++)
  if (msp_stdlist[i].retval == std)
   return msp_stdlist[i].name;
 return "unknown";
}
