
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int baud; unsigned int cflag; } ;


 unsigned int CBAUD ;
 TYPE_1__* mouse_baud_table ;

unsigned int suncore_mouse_baud_cflag_next(unsigned int cflag, int *new_baud)
{
 int i;

 for (i = 0; mouse_baud_table[i].baud != -1; i++)
  if (mouse_baud_table[i].cflag == (cflag & CBAUD))
   break;

 i += 1;
 if (mouse_baud_table[i].baud == -1)
  i = 0;

 *new_baud = mouse_baud_table[i].baud;
 return mouse_baud_table[i].cflag;
}
