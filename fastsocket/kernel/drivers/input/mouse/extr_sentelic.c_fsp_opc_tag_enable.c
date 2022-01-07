
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int FSP_BIT_EN_OPC_TAG ;
 int FSP_REG_OPC_QDOWN ;
 int dev_err (int *,char*) ;
 int fsp_reg_read (struct psmouse*,int ,int*) ;
 int fsp_reg_write (struct psmouse*,int ,int) ;
 int fsp_reg_write_enable (struct psmouse*,int) ;

__attribute__((used)) static int fsp_opc_tag_enable(struct psmouse *psmouse, bool enable)
{
 int v, nv;
 int res = 0;

 if (fsp_reg_read(psmouse, FSP_REG_OPC_QDOWN, &v) == -1) {
  dev_err(&psmouse->ps2dev.serio->dev, "Unable get OPC state.\n");
  return -EIO;
 }

 if (enable)
  nv = v | FSP_BIT_EN_OPC_TAG;
 else
  nv = v & ~FSP_BIT_EN_OPC_TAG;


 if (nv != v) {
  fsp_reg_write_enable(psmouse, 1);
  res = fsp_reg_write(psmouse, FSP_REG_OPC_QDOWN, nv);
  fsp_reg_write_enable(psmouse, 0);
 }

 if (res != 0) {
  dev_err(&psmouse->ps2dev.serio->dev,
   "Unable to enable OPC tag.\n");
  res = -EIO;
 }

 return res;
}
