
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw {int wait; int * serio; } ;
struct serio {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_close (struct serio*) ;
 struct serio_raw* serio_get_drvdata (struct serio*) ;
 int serio_raw_cleanup (struct serio_raw*) ;
 int serio_raw_mutex ;
 int serio_set_drvdata (struct serio*,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void serio_raw_disconnect(struct serio *serio)
{
 struct serio_raw *serio_raw;

 mutex_lock(&serio_raw_mutex);

 serio_raw = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));

 serio_raw->serio = ((void*)0);
 if (!serio_raw_cleanup(serio_raw))
  wake_up_interruptible(&serio_raw->wait);

 mutex_unlock(&serio_raw_mutex);
}
