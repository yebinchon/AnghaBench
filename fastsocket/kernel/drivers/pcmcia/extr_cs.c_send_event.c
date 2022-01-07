
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_socket {int state; TYPE_1__* callback; } ;
typedef int event_t ;
struct TYPE_2__ {int (* event ) (struct pcmcia_socket*,int ,int) ;int owner; } ;


 int SOCKET_CARDBUS ;
 int cs_dbg (struct pcmcia_socket*,int,char*,int ,int,TYPE_1__*) ;
 int module_put (int ) ;
 int stub1 (struct pcmcia_socket*,int ,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int send_event(struct pcmcia_socket *s, event_t event, int priority)
{
 int ret;

 if (s->state & SOCKET_CARDBUS)
  return 0;

 cs_dbg(s, 1, "send_event(event %d, pri %d, callback 0x%p)\n",
    event, priority, s->callback);

 if (!s->callback)
  return 0;
 if (!try_module_get(s->callback->owner))
  return 0;

 ret = s->callback->event(s, event, priority);

 module_put(s->callback->owner);

 return ret;
}
