
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char rate; int ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 int ps2_command (int *,unsigned char*,int ) ;

__attribute__((used)) static void psmouse_set_rate(struct psmouse *psmouse, unsigned int rate)
{
 static const unsigned char rates[] = { 200, 100, 80, 60, 40, 20, 10, 0 };
 unsigned char r;
 int i = 0;

 while (rates[i] > rate) i++;
 r = rates[i];
 ps2_command(&psmouse->ps2dev, &r, PSMOUSE_CMD_SETRATE);
 psmouse->rate = r;
}
