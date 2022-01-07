
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int xmit_cnt; } ;


 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;

__attribute__((used)) static int rs_chars_in_buffer(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_chars_in_buffer"))
  return 0;
 return info->xmit_cnt;
}
