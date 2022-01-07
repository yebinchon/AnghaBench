
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* soft_unresettable_controller ;

__attribute__((used)) static int ctlr_is_soft_resettable(u32 board_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(soft_unresettable_controller); i++)
  if (soft_unresettable_controller[i] == board_id)
   return 0;
 return 1;
}
