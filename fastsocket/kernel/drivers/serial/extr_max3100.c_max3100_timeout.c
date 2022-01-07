
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct max3100_port {scalar_t__ poll_time; int timer; TYPE_1__ port; } ;


 scalar_t__ jiffies ;
 int max3100_dowork (struct max3100_port*) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void max3100_timeout(unsigned long data)
{
 struct max3100_port *s = (struct max3100_port *)data;

 if (s->port.state) {
  max3100_dowork(s);
  mod_timer(&s->timer, jiffies + s->poll_time);
 }
}
