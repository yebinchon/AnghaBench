
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct TYPE_2__ {int open_wait; int * tty; int flags; scalar_t__ count; } ;
struct esp_struct {TYPE_1__ port; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int rs_flush_buffer (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int shutdown (struct esp_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void esp_hangup(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "esp_hangup"))
  return;

 rs_flush_buffer(tty);
 shutdown(info);
 info->port.count = 0;
 info->port.flags &= ~ASYNC_NORMAL_ACTIVE;
 info->port.tty = ((void*)0);
 wake_up_interruptible(&info->port.open_wait);
}
