
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int cmd_mutex; int serio; } ;


 scalar_t__ i8042_check_port_owner (int ) ;
 int i8042_unlock_chip () ;
 int mutex_unlock (int *) ;

void ps2_end_command(struct ps2dev *ps2dev)
{
 if (i8042_check_port_owner(ps2dev->serio))
  i8042_unlock_chip();

 mutex_unlock(&ps2dev->cmd_mutex);
}
