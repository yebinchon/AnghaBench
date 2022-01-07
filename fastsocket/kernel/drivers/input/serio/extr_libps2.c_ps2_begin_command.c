
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int serio; int cmd_mutex; } ;


 scalar_t__ i8042_check_port_owner (int ) ;
 int i8042_lock_chip () ;
 int mutex_lock (int *) ;

void ps2_begin_command(struct ps2dev *ps2dev)
{
 mutex_lock(&ps2dev->cmd_mutex);

 if (i8042_check_port_owner(ps2dev->serio))
  i8042_lock_chip();
}
