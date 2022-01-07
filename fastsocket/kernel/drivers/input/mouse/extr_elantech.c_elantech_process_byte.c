
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int packet; struct elantech_data* private; } ;
struct elantech_data {int debug; int hw_version; int paritycheck; } ;
typedef int psmouse_ret_t ;


 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int elantech_check_parity_v1 (struct psmouse*) ;
 int elantech_packet_dump (int ,scalar_t__) ;
 int elantech_report_absolute_v1 (struct psmouse*) ;
 int elantech_report_absolute_v2 (struct psmouse*) ;

__attribute__((used)) static psmouse_ret_t elantech_process_byte(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;

 if (psmouse->pktcnt < psmouse->pktsize)
  return PSMOUSE_GOOD_DATA;

 if (etd->debug > 1)
  elantech_packet_dump(psmouse->packet, psmouse->pktsize);

 switch (etd->hw_version) {
 case 1:
  if (etd->paritycheck && !elantech_check_parity_v1(psmouse))
   return PSMOUSE_BAD_DATA;

  elantech_report_absolute_v1(psmouse);
  break;

 case 2:

  elantech_report_absolute_v2(psmouse);
  break;
 }

 return PSMOUSE_FULL_PACKET;
}
