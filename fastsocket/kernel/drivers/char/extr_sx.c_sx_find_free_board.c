
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int SX_BOARD_PRESENT ;
 unsigned int SX_NBOARDS ;
 TYPE_1__* boards ;

__attribute__((used)) static unsigned int sx_find_free_board(void)
{
 unsigned int i;

 for (i = 0; i < SX_NBOARDS; i++)
  if (!(boards[i].flags & SX_BOARD_PRESENT))
   break;

 return i;
}
