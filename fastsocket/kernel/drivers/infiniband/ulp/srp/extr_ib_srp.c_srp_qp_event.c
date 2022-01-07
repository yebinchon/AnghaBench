
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static void srp_qp_event(struct ib_event *event, void *context)
{
 pr_debug("QP event %d\n", event->event);
}
