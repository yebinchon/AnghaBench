
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {scalar_t__ session; } ;
struct TYPE_6__ {TYPE_1__* signal; } ;
struct TYPE_5__ {scalar_t__ tty; scalar_t__ leader; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 scalar_t__ capable (int ) ;
 TYPE_2__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_set_tty (TYPE_2__*,struct tty_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int session_clear_tty (scalar_t__) ;
 scalar_t__ task_session (TYPE_2__*) ;
 int tasklist_lock ;
 int tty_mutex ;

__attribute__((used)) static int tiocsctty(struct tty_struct *tty, int arg)
{
 int ret = 0;
 if (current->signal->leader && (task_session(current) == tty->session))
  return ret;

 mutex_lock(&tty_mutex);




 if (!current->signal->leader || current->signal->tty) {
  ret = -EPERM;
  goto unlock;
 }

 if (tty->session) {




  if (arg == 1 && capable(CAP_SYS_ADMIN)) {



   read_lock(&tasklist_lock);
   session_clear_tty(tty->session);
   read_unlock(&tasklist_lock);
  } else {
   ret = -EPERM;
   goto unlock;
  }
 }
 proc_set_tty(current, tty);
unlock:
 mutex_unlock(&tty_mutex);
 return ret;
}
