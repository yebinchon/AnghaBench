
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int resolution; int ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 int ps2_command (int *,unsigned char*,int ) ;

__attribute__((used)) static void lifebook_set_resolution(struct psmouse *psmouse, unsigned int resolution)
{
 static const unsigned char params[] = { 0, 1, 2, 2, 3 };
 unsigned char p;

 if (resolution == 0 || resolution > 400)
  resolution = 400;

 p = params[resolution / 100];
 ps2_command(&psmouse->ps2dev, &p, PSMOUSE_CMD_SETRES);
 psmouse->resolution = 50 << p;
}
