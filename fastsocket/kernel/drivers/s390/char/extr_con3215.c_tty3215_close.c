
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; int closing; scalar_t__ driver_data; } ;
struct raw3215_info {int tlet; int * tty; } ;
struct file {int dummy; } ;


 int raw3215_shutdown (struct raw3215_info*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void tty3215_close(struct tty_struct *tty, struct file * filp)
{
 struct raw3215_info *raw;

 raw = (struct raw3215_info *) tty->driver_data;
 if (raw == ((void*)0) || tty->count > 1)
  return;
 tty->closing = 1;

 raw3215_shutdown(raw);
 raw->tty = ((void*)0);
 tasklet_kill(&raw->tlet);
 tty->closing = 0;
}
