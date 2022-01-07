
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm4000_dev {int monitor_running; int timer; } ;


 int DEBUGP (int,struct cm4000_dev*,char*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int monitor_card ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static void start_monitor(struct cm4000_dev *dev)
{
 DEBUGP(3, dev, "-> start_monitor\n");
 if (!dev->monitor_running) {
  DEBUGP(5, dev, "create, init and add timer\n");
  setup_timer(&dev->timer, monitor_card, (unsigned long)dev);
  dev->monitor_running = 1;
  mod_timer(&dev->timer, jiffies);
 } else
  DEBUGP(5, dev, "monitor already running\n");
 DEBUGP(3, dev, "<- start_monitor\n");
}
