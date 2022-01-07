
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int harddog_in_fd ;
 int harddog_out_fd ;
 int lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_watchdog (int,int) ;
 scalar_t__ timer_alive ;

__attribute__((used)) static int harddog_release(struct inode *inode, struct file *file)
{




 spin_lock(&lock);

 stop_watchdog(harddog_in_fd, harddog_out_fd);
 harddog_in_fd = -1;
 harddog_out_fd = -1;

 timer_alive=0;
 spin_unlock(&lock);

 return 0;
}
