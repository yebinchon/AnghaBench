
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {int throttle; } ;



__attribute__((used)) static void
tty3270_throttle(struct tty_struct * tty)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp)
  return;
 tp->throttle = 1;
}
