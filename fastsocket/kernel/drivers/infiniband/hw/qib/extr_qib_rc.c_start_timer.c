
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; int function; } ;
struct qib_qp {TYPE_1__ s_timer; scalar_t__ timeout_jiffies; int s_flags; } ;


 int QIB_S_TIMER ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int rc_timeout ;

__attribute__((used)) static void start_timer(struct qib_qp *qp)
{
 qp->s_flags |= QIB_S_TIMER;
 qp->s_timer.function = rc_timeout;

 qp->s_timer.expires = jiffies + qp->timeout_jiffies;
 add_timer(&qp->s_timer);
}
