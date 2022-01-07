
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tail; int head; } ;
struct tty_struct {int index; int name; int ops; struct tty_driver* driver; int SAK_work; int tty_files; int ctrl_lock; int read_lock; int echo_lock; int output_lock; int atomic_write_lock; int atomic_read_lock; int hangup_work; int read_wait; int write_wait; int ldisc_mutex; int termios_mutex; TYPE_1__ buf; int overrun_time; int * pgrp; int * session; int magic; int kref; } ;
struct tty_driver {int ops; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int TTY_MAGIC ;
 int do_SAK_work ;
 int do_tty_hangup ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 int kref_init (int *) ;
 int memset (struct tty_struct*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tty_buffer_init (struct tty_struct*) ;
 int tty_ldisc_init (struct tty_struct*) ;
 int tty_line_name (struct tty_driver*,int,int ) ;

void initialize_tty_struct(struct tty_struct *tty,
  struct tty_driver *driver, int idx)
{
 memset(tty, 0, sizeof(struct tty_struct));
 kref_init(&tty->kref);
 tty->magic = TTY_MAGIC;
 tty_ldisc_init(tty);
 tty->session = ((void*)0);
 tty->pgrp = ((void*)0);
 tty->overrun_time = jiffies;
 tty->buf.head = tty->buf.tail = ((void*)0);
 tty_buffer_init(tty);
 mutex_init(&tty->termios_mutex);
 mutex_init(&tty->ldisc_mutex);
 init_waitqueue_head(&tty->write_wait);
 init_waitqueue_head(&tty->read_wait);
 INIT_WORK(&tty->hangup_work, do_tty_hangup);
 mutex_init(&tty->atomic_read_lock);
 mutex_init(&tty->atomic_write_lock);
 mutex_init(&tty->output_lock);
 mutex_init(&tty->echo_lock);
 spin_lock_init(&tty->read_lock);
 spin_lock_init(&tty->ctrl_lock);
 INIT_LIST_HEAD(&tty->tty_files);
 INIT_WORK(&tty->SAK_work, do_SAK_work);

 tty->driver = driver;
 tty->ops = driver->ops;
 tty->index = idx;
 tty_line_name(driver, idx, tty->name);
}
