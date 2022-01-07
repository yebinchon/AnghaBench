
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ ioctl_cmds; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int EAGAIN ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_trylock (int *) ;

__attribute__((used)) static inline int
mptctl_syscall_down(MPT_ADAPTER *ioc, int nonblock)
{
 int rc = 0;

 if (nonblock) {
  if (!mutex_trylock(&ioc->ioctl_cmds.mutex))
   rc = -EAGAIN;
 } else {
  if (mutex_lock_interruptible(&ioc->ioctl_cmds.mutex))
   rc = -ERESTARTSYS;
 }
 return rc;
}
