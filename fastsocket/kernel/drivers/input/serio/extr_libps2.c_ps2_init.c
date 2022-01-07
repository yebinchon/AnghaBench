
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int depth; } ;
struct ps2dev {struct serio* serio; int wait; int cmd_mutex; } ;


 int init_waitqueue_head (int *) ;
 int lockdep_set_subclass (int *,int ) ;
 int mutex_init (int *) ;

void ps2_init(struct ps2dev *ps2dev, struct serio *serio)
{
 mutex_init(&ps2dev->cmd_mutex);
 lockdep_set_subclass(&ps2dev->cmd_mutex, serio->depth);
 init_waitqueue_head(&ps2dev->wait);
 ps2dev->serio = serio;
}
