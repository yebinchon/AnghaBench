
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serio; } ;
struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int* packet; TYPE_1__ ps2dev; struct alps_data* private; } ;
struct alps_data {int (* process_packet ) (struct psmouse*) ;} ;


 int dbg (char*,int,int,int) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 int stub1 (struct psmouse*) ;

__attribute__((used)) static void alps_flush_packet(unsigned long data)
{
 struct psmouse *psmouse = (struct psmouse *)data;
 struct alps_data *priv = psmouse->private;

 serio_pause_rx(psmouse->ps2dev.serio);

 if (psmouse->pktcnt == psmouse->pktsize) {






  if ((psmouse->packet[3] |
       psmouse->packet[4] |
       psmouse->packet[5]) & 0x80) {
   dbg("refusing packet %x %x %x "
       "(suspected interleaved ps/2)\n",
       psmouse->packet[3], psmouse->packet[4],
       psmouse->packet[5]);
  } else {
   priv->process_packet(psmouse);
  }
  psmouse->pktcnt = 0;
 }

 serio_continue_rx(psmouse->ps2dev.serio);
}
