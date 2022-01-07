
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int present; } ;
struct pcmcia_socket {TYPE_1__ pcmcia_state; int dev; } ;
typedef int event_t ;
 int ENODEV ;
 int KERN_ERR ;
 int dev_printk (int ,int *,char*,int) ;
 int ds_dev_dbg (int,int *,char*,int,int,struct pcmcia_socket*) ;
 int handle_event (struct pcmcia_socket*,int) ;
 int pcmcia_card_add (struct pcmcia_socket*) ;
 int pcmcia_card_remove (struct pcmcia_socket*,int *) ;
 struct pcmcia_socket* pcmcia_get_socket (struct pcmcia_socket*) ;
 int pcmcia_put_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int ds_event(struct pcmcia_socket *skt, event_t event, int priority)
{
 struct pcmcia_socket *s = pcmcia_get_socket(skt);

 if (!s) {
  dev_printk(KERN_ERR, &skt->dev,
      "PCMCIA obtaining reference to socket " "failed, event 0x%x lost!\n", event);

  return -ENODEV;
 }

 ds_dev_dbg(1, &skt->dev, "ds_event(0x%06x, %d, 0x%p)\n",
     event, priority, skt);

 switch (event) {
 case 133:
  s->pcmcia_state.present = 0;
  pcmcia_card_remove(skt, ((void*)0));
  handle_event(skt, event);
  break;

 case 134:
  s->pcmcia_state.present = 1;
  pcmcia_card_add(skt);
  handle_event(skt, event);
  break;

 case 131:
  break;

 case 129:
 case 130:
 case 128:
 case 132:
 default:
  handle_event(skt, event);
  break;
    }

    pcmcia_put_socket(s);

    return 0;
}
