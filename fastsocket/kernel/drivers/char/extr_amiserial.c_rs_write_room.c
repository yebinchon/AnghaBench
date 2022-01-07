
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct async_struct* driver_data; } ;
struct TYPE_2__ {int tail; int head; } ;
struct async_struct {TYPE_1__ xmit; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int SERIAL_XMIT_SIZE ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;

__attribute__((used)) static int rs_write_room(struct tty_struct *tty)
{
 struct async_struct *info = tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_write_room"))
  return 0;
 return CIRC_SPACE(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
}
