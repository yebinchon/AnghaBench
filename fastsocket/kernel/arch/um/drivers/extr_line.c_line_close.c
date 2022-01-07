
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; struct line* driver_data; } ;
struct line {int count_lock; scalar_t__ sigio; int * tty; int valid; } ;
struct file {int dummy; } ;


 int flush_buffer (struct line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unregister_winch (struct tty_struct*) ;

void line_close(struct tty_struct *tty, struct file * filp)
{
 struct line *line = tty->driver_data;





 if (line == ((void*)0))
  return;


 flush_buffer(line);

 spin_lock(&line->count_lock);
 if (!line->valid)
  goto out_unlock;

 if (tty->count > 1)
  goto out_unlock;

 spin_unlock(&line->count_lock);

 line->tty = ((void*)0);
 tty->driver_data = ((void*)0);

 if (line->sigio) {
  unregister_winch(tty);
  line->sigio = 0;
 }

 return;

out_unlock:
 spin_unlock(&line->count_lock);
}
