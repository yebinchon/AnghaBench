
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipw_tty* driver_data; } ;
struct ipw_tty {int tx_bytes_queued; int open_count; } ;



__attribute__((used)) static int ipw_chars_in_buffer(struct tty_struct *linux_tty)
{
 struct ipw_tty *tty = linux_tty->driver_data;

 if (!tty)
  return 0;

 if (!tty->open_count)
  return 0;

 return tty->tx_bytes_queued;
}
