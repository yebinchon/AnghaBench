
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; scalar_t__ driver_data; } ;
typedef int ser_info_t ;


 scalar_t__ serial_paranoia_check (int *,int ,char*) ;

__attribute__((used)) static int rs_360_chars_in_buffer(struct tty_struct *tty)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_chars_in_buffer"))
  return 0;
 return 0;
}
