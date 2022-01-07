
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct tty_struct {int dummy; } ;


 int kbd_put_queue (struct tty_struct*,int) ;

__attribute__((used)) static void
to_utf8(struct tty_struct *tty, ushort c)
{
 if (c < 0x80)

  kbd_put_queue(tty, c);
 else if (c < 0x800) {

  kbd_put_queue(tty, 0xc0 | (c >> 6));
  kbd_put_queue(tty, 0x80 | (c & 0x3f));
 } else {

  kbd_put_queue(tty, 0xe0 | (c >> 12));
  kbd_put_queue(tty, 0x80 | ((c >> 6) & 0x3f));
  kbd_put_queue(tty, 0x80 | (c & 0x3f));
 }
}
