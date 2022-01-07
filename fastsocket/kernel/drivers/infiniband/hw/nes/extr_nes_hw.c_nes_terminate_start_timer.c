
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct nes_qp {TYPE_1__ terminate_timer; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int nes_terminate_timeout ;

__attribute__((used)) static void nes_terminate_start_timer(struct nes_qp *nesqp)
{
 init_timer(&nesqp->terminate_timer);
 nesqp->terminate_timer.function = nes_terminate_timeout;
 nesqp->terminate_timer.expires = jiffies + HZ;
 nesqp->terminate_timer.data = (unsigned long)nesqp;
 add_timer(&nesqp->terminate_timer);
}
