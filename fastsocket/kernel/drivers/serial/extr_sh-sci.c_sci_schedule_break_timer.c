
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct sci_port {TYPE_1__ break_timer; } ;


 scalar_t__ SCI_BREAK_JIFFIES ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void sci_schedule_break_timer(struct sci_port *port)
{
 port->break_timer.expires = jiffies + SCI_BREAK_JIFFIES;
 add_timer(&port->break_timer);
}
