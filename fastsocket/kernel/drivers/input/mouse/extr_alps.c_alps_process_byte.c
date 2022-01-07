
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int* packet; int pktcnt; int pktsize; struct alps_data* private; } ;
struct alps_data {int flags; scalar_t__ proto_version; int (* process_packet ) (struct psmouse*) ;int byte0; int mask0; } ;
typedef int psmouse_ret_t ;


 scalar_t__ ALPS_PROTO_V5 ;
 int ALPS_PS2_INTERLEAVED ;
 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int alps_handle_interleaved_ps2 (struct psmouse*) ;
 int alps_is_valid_first_byte (struct alps_data*,int) ;
 int alps_report_bare_ps2_packet (struct psmouse*,int*,int) ;
 int dbg (char*,int,int,...) ;
 int stub1 (struct psmouse*) ;

__attribute__((used)) static psmouse_ret_t alps_process_byte(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 if ((psmouse->packet[0] & 0xc8) == 0x08) {
  if (psmouse->pktcnt == 3) {
   alps_report_bare_ps2_packet(psmouse, psmouse->packet,
          1);
   return PSMOUSE_FULL_PACKET;
  }
  return PSMOUSE_GOOD_DATA;
 }



 if ((priv->flags & ALPS_PS2_INTERLEAVED) &&
     psmouse->pktcnt >= 4 && (psmouse->packet[3] & 0x0f) == 0x0f) {
  return alps_handle_interleaved_ps2(psmouse);
 }

 if (!alps_is_valid_first_byte(priv, psmouse->packet[0])) {
  dbg("refusing packet[0] = %x (mask0 = %x, byte0 = %x)\n",
      psmouse->packet[0], priv->mask0, priv->byte0);
  return PSMOUSE_BAD_DATA;
 }


 if (priv->proto_version != ALPS_PROTO_V5 &&
     psmouse->pktcnt >= 2 && psmouse->pktcnt <= psmouse->pktsize &&
     (psmouse->packet[psmouse->pktcnt - 1] & 0x80)) {
  dbg("refusing packet[%i] = %x\n",
      psmouse->pktcnt - 1, psmouse->packet[psmouse->pktcnt - 1]);
  return PSMOUSE_BAD_DATA;
 }

 if (psmouse->pktcnt == psmouse->pktsize) {
  priv->process_packet(psmouse);
  return PSMOUSE_FULL_PACKET;
 }

 return PSMOUSE_GOOD_DATA;
}
