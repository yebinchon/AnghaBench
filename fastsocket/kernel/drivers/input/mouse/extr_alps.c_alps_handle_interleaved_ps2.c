
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktcnt; int* packet; struct alps_data* private; } ;
struct alps_data {int (* process_packet ) (struct psmouse*) ;int timer; } ;
typedef int psmouse_ret_t ;


 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_GOOD_DATA ;
 int alps_is_valid_first_byte (struct alps_data*,int) ;
 int alps_report_bare_ps2_packet (struct psmouse*,int*,int) ;
 int dbg (char*,int,int,int,int) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int stub1 (struct psmouse*) ;

__attribute__((used)) static psmouse_ret_t alps_handle_interleaved_ps2(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 if (psmouse->pktcnt < 6)
  return PSMOUSE_GOOD_DATA;

 if (psmouse->pktcnt == 6) {






  mod_timer(&priv->timer, jiffies + msecs_to_jiffies(20));
  return PSMOUSE_GOOD_DATA;
 }

 del_timer(&priv->timer);

 if (psmouse->packet[6] & 0x80) {







  if (((psmouse->packet[3] |
        psmouse->packet[4] |
        psmouse->packet[5]) & 0x80) ||
      (!alps_is_valid_first_byte(priv, psmouse->packet[6]))) {
   dbg("refusing packet %x %x %x %x "
       "(suspected interleaved ps/2)\n",
       psmouse->packet[3], psmouse->packet[4],
       psmouse->packet[5], psmouse->packet[6]);
   return PSMOUSE_BAD_DATA;
  }

  priv->process_packet(psmouse);


  psmouse->packet[0] = psmouse->packet[6];
  psmouse->pktcnt = 1;

 } else {
  alps_report_bare_ps2_packet(psmouse, &psmouse->packet[3],
         0);
  psmouse->packet[3] = psmouse->packet[6] & 0xf7;
  psmouse->pktcnt = 4;
 }

 return PSMOUSE_GOOD_DATA;
}
