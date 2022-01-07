
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_struct* write_buf; } ;


 int kfree (struct tty_struct*) ;
 int tty_buffer_free_all (struct tty_struct*) ;

void free_tty_struct(struct tty_struct *tty)
{
 kfree(tty->write_buf);
 tty_buffer_free_all(tty);
 kfree(tty);
}
