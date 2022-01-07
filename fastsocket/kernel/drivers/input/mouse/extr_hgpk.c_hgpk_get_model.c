
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;
typedef enum hgpk_model_t { ____Placeholder_hgpk_model_t } hgpk_model_t ;


 int EIO ;
 int ENODEV ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETSCALE21 ;
 int hgpk_dbg (struct psmouse*,char*,unsigned char,unsigned char,unsigned char) ;
 int hgpk_info (struct psmouse*,char*,unsigned char) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static enum hgpk_model_t hgpk_get_model(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[3];


 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE21) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE21) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE21) ||
     ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO)) {
  return -EIO;
 }

 hgpk_dbg(psmouse, "ID: %02x %02x %02x\n", param[0], param[1], param[2]);


 if (param[0] != 0x67 || param[1] != 0x00)
  return -ENODEV;

 hgpk_info(psmouse, "OLPC touchpad revision 0x%x\n", param[2]);

 return param[2];
}
