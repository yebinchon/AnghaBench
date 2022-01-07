
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int iser_err (char*,int ) ;

__attribute__((used)) static void iser_cq_event_callback(struct ib_event *cause, void *context)
{
 iser_err("got cq event %d \n", cause->event);
}
