
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_add_pending; int mfc_pfc; } ;
struct pcmcia_socket {int device_add; TYPE_1__ pcmcia_state; int sock; int dev; } ;


 int ds_dev_dbg (int,int *,char*,char*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pcmcia_add_device_later(struct pcmcia_socket *s, int mfc)
{
 if (!s->pcmcia_state.device_add_pending) {
  ds_dev_dbg(1, &s->dev, "scheduling to add %s secondary"
         " device to %d\n", mfc ? "mfc" : "pfc", s->sock);
  s->pcmcia_state.device_add_pending = 1;
  s->pcmcia_state.mfc_pfc = mfc;
  schedule_work(&s->device_add);
 }
 return;
}
