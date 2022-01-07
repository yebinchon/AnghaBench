
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {struct ps2dev ps2dev; struct fsp_data* private; } ;
struct fsp_data {int buttons; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int FSP_BIT_EN_AUTO_MSID8 ;
 int FSP_BIT_EN_MSID6 ;
 int FSP_BIT_EN_MSID7 ;
 int FSP_BIT_EN_MSID8 ;
 int FSP_BIT_EN_PKT_G0 ;
 int FSP_REG_SYSCTL5 ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_SETRATE ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int fsp_onpad_hscr (struct psmouse*,int) ;
 int fsp_onpad_vscr (struct psmouse*,int) ;
 scalar_t__ fsp_opc_tag_enable (struct psmouse*,int) ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;
 scalar_t__ fsp_reg_write (struct psmouse*,int ,int) ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int fsp_activate_protocol(struct psmouse *psmouse)
{
 struct fsp_data *pad = psmouse->private;
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[2];
 int val;





 param[0] = 200;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 200;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 80;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);

 ps2_command(ps2dev, param, PSMOUSE_CMD_GETID);
 if (param[0] != 0x04) {
  dev_err(&psmouse->ps2dev.serio->dev,
   "Unable to enable 4 bytes packet format.\n");
  return -EIO;
 }

 if (fsp_reg_read(psmouse, FSP_REG_SYSCTL5, &val)) {
  dev_err(&psmouse->ps2dev.serio->dev,
   "Unable to read SYSCTL5 register.\n");
  return -EIO;
 }

 val &= ~(FSP_BIT_EN_MSID7 | FSP_BIT_EN_MSID8 | FSP_BIT_EN_AUTO_MSID8);

 val &= ~FSP_BIT_EN_PKT_G0;
 if (pad->buttons == 0x06) {

  val |= FSP_BIT_EN_MSID6;
 }

 if (fsp_reg_write(psmouse, FSP_REG_SYSCTL5, val)) {
  dev_err(&psmouse->ps2dev.serio->dev,
   "Unable to set up required mode bits.\n");
  return -EIO;
 }





 if (fsp_opc_tag_enable(psmouse, 1))
  dev_warn(&psmouse->ps2dev.serio->dev,
    "Failed to enable OPC tag mode.\n");


 fsp_onpad_vscr(psmouse, 1);
 fsp_onpad_hscr(psmouse, 1);

 return 0;
}
