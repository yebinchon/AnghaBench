
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;



__attribute__((used)) static unsigned int hci_uart_tty_poll(struct tty_struct *tty,
     struct file *filp, poll_table *wait)
{
 return 0;
}
