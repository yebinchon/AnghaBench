
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_ALPS ;
 int PSMOUSE_CMD_RESET_DIS ;
 int PSMOUSE_ELANTECH ;
 int PSMOUSE_FSP ;
 int PSMOUSE_GENPS ;
 int PSMOUSE_HGPK ;
 unsigned int PSMOUSE_IMEX ;
 unsigned int PSMOUSE_IMPS ;
 int PSMOUSE_LIFEBOOK ;
 unsigned int PSMOUSE_PS2 ;
 int PSMOUSE_PS2PP ;
 int PSMOUSE_SYNAPTICS ;
 int PSMOUSE_THINKPS ;
 int PSMOUSE_TOUCHKIT_PS2 ;
 int PSMOUSE_TRACKPOINT ;
 scalar_t__ alps_detect (struct psmouse*,int) ;
 scalar_t__ alps_init (struct psmouse*) ;
 scalar_t__ elantech_detect (struct psmouse*,int) ;
 scalar_t__ elantech_init (struct psmouse*) ;
 scalar_t__ fsp_detect (struct psmouse*,int) ;
 scalar_t__ fsp_init (struct psmouse*) ;
 scalar_t__ genius_detect (struct psmouse*,int) ;
 scalar_t__ hgpk_detect (struct psmouse*,int) ;
 scalar_t__ hgpk_init (struct psmouse*) ;
 scalar_t__ im_explorer_detect (struct psmouse*,int) ;
 scalar_t__ intellimouse_detect (struct psmouse*,int) ;
 scalar_t__ lifebook_detect (struct psmouse*,int) ;
 scalar_t__ lifebook_init (struct psmouse*) ;
 int ps2_command (int *,int *,int ) ;
 int ps2bare_detect (struct psmouse*,int) ;
 scalar_t__ ps2pp_init (struct psmouse*,int) ;
 int psmouse_reset (struct psmouse*) ;
 scalar_t__ synaptics_detect (struct psmouse*,int) ;
 scalar_t__ synaptics_init (struct psmouse*) ;
 int synaptics_reset (struct psmouse*) ;
 scalar_t__ synaptics_supported () ;
 scalar_t__ thinking_detect (struct psmouse*,int) ;
 scalar_t__ touchkit_ps2_detect (struct psmouse*,int) ;
 scalar_t__ trackpoint_detect (struct psmouse*,int) ;

__attribute__((used)) static int psmouse_extensions(struct psmouse *psmouse,
         unsigned int max_proto, bool set_properties)
{
 bool synaptics_hardware = 0;





 if (lifebook_detect(psmouse, set_properties) == 0) {
  if (max_proto > PSMOUSE_IMEX) {
   if (!set_properties || lifebook_init(psmouse) == 0)
    return PSMOUSE_LIFEBOOK;
  }
 }






 if (max_proto > PSMOUSE_IMEX && thinking_detect(psmouse, set_properties) == 0)
  return PSMOUSE_THINKPS;






 if (max_proto > PSMOUSE_PS2 && synaptics_detect(psmouse, set_properties) == 0) {
  synaptics_hardware = 1;

  if (max_proto > PSMOUSE_IMEX) {




   if (synaptics_supported() &&
       (!set_properties || synaptics_init(psmouse) == 0)) {
    return PSMOUSE_SYNAPTICS;
   }






   max_proto = PSMOUSE_IMEX;
  }



  synaptics_reset(psmouse);
 }




 if (max_proto > PSMOUSE_IMEX) {
  ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);
  if (alps_detect(psmouse, set_properties) == 0) {
   if (!set_properties || alps_init(psmouse) == 0)
    return PSMOUSE_ALPS;



   max_proto = PSMOUSE_IMEX;
  }
 }




 if (max_proto > PSMOUSE_IMEX &&
   hgpk_detect(psmouse, set_properties) == 0) {
  if (!set_properties || hgpk_init(psmouse) == 0)
   return PSMOUSE_HGPK;



  max_proto = PSMOUSE_IMEX;
 }




 if (max_proto > PSMOUSE_IMEX &&
   elantech_detect(psmouse, set_properties) == 0) {
  if (!set_properties || elantech_init(psmouse) == 0)
   return PSMOUSE_ELANTECH;



  max_proto = PSMOUSE_IMEX;
 }


 if (max_proto > PSMOUSE_IMEX) {
  if (genius_detect(psmouse, set_properties) == 0)
   return PSMOUSE_GENPS;

  if (ps2pp_init(psmouse, set_properties) == 0)
   return PSMOUSE_PS2PP;

  if (trackpoint_detect(psmouse, set_properties) == 0)
   return PSMOUSE_TRACKPOINT;

  if (touchkit_ps2_detect(psmouse, set_properties) == 0)
   return PSMOUSE_TOUCHKIT_PS2;
 }





 if (max_proto > PSMOUSE_IMEX) {
  if (fsp_detect(psmouse, set_properties) == 0) {
   if (!set_properties || fsp_init(psmouse) == 0)
    return PSMOUSE_FSP;



   max_proto = PSMOUSE_IMEX;
  }
 }






 ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);
 psmouse_reset(psmouse);

 if (max_proto >= PSMOUSE_IMEX && im_explorer_detect(psmouse, set_properties) == 0)
  return PSMOUSE_IMEX;

 if (max_proto >= PSMOUSE_IMPS && intellimouse_detect(psmouse, set_properties) == 0)
  return PSMOUSE_IMPS;





 ps2bare_detect(psmouse, set_properties);

 if (synaptics_hardware) {






  psmouse_reset(psmouse);
 }

 return PSMOUSE_PS2;
}
