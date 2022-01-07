
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct async_struct {char x_char; } ;


 int transmit_chars (struct async_struct*,int *) ;

__attribute__((used)) static void rs_send_xchar(struct tty_struct *tty, char ch)
{
 struct async_struct *info = (struct async_struct *)tty->driver_data;

 info->x_char = ch;
 if (ch) {




  transmit_chars(info, ((void*)0));
 }
}
