
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int DEBUG_VERBOSE ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int debug ;
 int del_timer (TYPE_1__*) ;
 int idle (struct net_device*) ;
 scalar_t__ jiffies ;
 int ltpc_poll_counter ;
 TYPE_1__ ltpc_timer ;
 int printk (char*) ;

__attribute__((used)) static void ltpc_poll(unsigned long l)
{
 struct net_device *dev = (struct net_device *) l;

 del_timer(&ltpc_timer);

 if(debug & DEBUG_VERBOSE) {
  if (!ltpc_poll_counter) {
   ltpc_poll_counter = 50;
   printk("ltpc poll is alive\n");
  }
  ltpc_poll_counter--;
 }

 if (!dev)
  return;


 idle(dev);
 ltpc_timer.expires = jiffies + HZ/20;

 add_timer(&ltpc_timer);
}
