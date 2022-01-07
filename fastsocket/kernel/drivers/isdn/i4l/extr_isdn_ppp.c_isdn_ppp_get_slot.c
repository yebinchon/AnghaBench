
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int ISDN_MAX_CHANNELS ;
 TYPE_1__** ippp_table ;

__attribute__((used)) static int
isdn_ppp_get_slot(void)
{
 int i;
 for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
  if (!ippp_table[i]->state)
   return i;
 }
 return -1;
}
