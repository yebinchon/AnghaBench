
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pollfd {int fd; } ;
struct TYPE_5__ {int used; struct pollfd* poll; } ;
struct TYPE_4__ {int used; struct pollfd* poll; } ;


 int EIO ;
 TYPE_3__ current_poll ;
 int need_poll (TYPE_1__*,int) ;
 TYPE_1__ next_poll ;
 int sigio_lock () ;
 int sigio_unlock () ;
 int update_thread () ;
 int write_sigio_pid ;

int ignore_sigio_fd(int fd)
{
 struct pollfd *p;
 int err = 0, i, n = 0;






 if (write_sigio_pid == -1)
  return -EIO;

 sigio_lock();
 for (i = 0; i < current_poll.used; i++) {
  if (current_poll.poll[i].fd == fd)
   break;
 }
 if (i == current_poll.used)
  goto out;

 err = need_poll(&next_poll, current_poll.used - 1);
 if (err)
  goto out;

 for (i = 0; i < current_poll.used; i++) {
  p = &current_poll.poll[i];
  if (p->fd != fd)
   next_poll.poll[n++] = *p;
 }
 next_poll.used = current_poll.used - 1;

 update_thread();
 out:
 sigio_unlock();
 return err;
}
