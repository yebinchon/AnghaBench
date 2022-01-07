
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct TYPE_2__ {int open_wait; int * tty; int flags; scalar_t__ count; } ;
struct slgt_info {TYPE_1__ port; int device_name; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int DBGINFO (char*) ;
 int flush_buffer (struct tty_struct*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int shutdown (struct slgt_info*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hangup(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;

 if (sanity_check(info, tty->name, "hangup"))
  return;
 DBGINFO(("%s hangup\n", info->device_name));

 flush_buffer(tty);
 shutdown(info);

 info->port.count = 0;
 info->port.flags &= ~ASYNC_NORMAL_ACTIVE;
 info->port.tty = ((void*)0);

 wake_up_interruptible(&info->port.open_wait);
}
