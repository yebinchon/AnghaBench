
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ user_info_t ;
struct pcmcia_socket {int queue; TYPE_1__* user; } ;
typedef int event_t ;


 int queue_event (TYPE_1__*,int ) ;
 int wake_up_interruptible (int *) ;

void handle_event(struct pcmcia_socket *s, event_t event)
{
    user_info_t *user;
    for (user = s->user; user; user = user->next)
 queue_event(user, event);
    wake_up_interruptible(&s->queue);
}
