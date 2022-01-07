
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {struct ps2dev ps2dev; } ;
struct TYPE_2__ {int dev; } ;


 int FSP_CMD_TIMEOUT ;
 int FSP_CMD_TIMEOUT2 ;
 int dev_dbg (int *,char*,int,int,int) ;
 unsigned char fsp_test_invert_cmd (int) ;
 unsigned char fsp_test_swap_cmd (int) ;
 int ps2_begin_command (struct ps2dev*) ;
 int ps2_end_command (struct ps2dev*) ;
 scalar_t__ ps2_sendbyte (struct ps2dev*,unsigned char,int ) ;

__attribute__((used)) static int fsp_reg_write(struct psmouse *psmouse, int reg_addr, int reg_val)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char v;
 int rc = -1;

 ps2_begin_command(ps2dev);

 if (ps2_sendbyte(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
  goto out;

 if ((v = fsp_test_invert_cmd(reg_addr)) != reg_addr) {

  ps2_sendbyte(ps2dev, 0x74, FSP_CMD_TIMEOUT2);
 } else {
  if ((v = fsp_test_swap_cmd(reg_addr)) != reg_addr) {

   ps2_sendbyte(ps2dev, 0x77, FSP_CMD_TIMEOUT2);
  } else {

   ps2_sendbyte(ps2dev, 0x55, FSP_CMD_TIMEOUT2);
  }
 }

 ps2_sendbyte(ps2dev, v, FSP_CMD_TIMEOUT2);

 if (ps2_sendbyte(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
  return -1;

 if ((v = fsp_test_invert_cmd(reg_val)) != reg_val) {

  ps2_sendbyte(ps2dev, 0x47, FSP_CMD_TIMEOUT2);
 } else if ((v = fsp_test_swap_cmd(reg_val)) != reg_val) {

  ps2_sendbyte(ps2dev, 0x44, FSP_CMD_TIMEOUT2);
 } else {

  ps2_sendbyte(ps2dev, 0x33, FSP_CMD_TIMEOUT2);
 }


 ps2_sendbyte(ps2dev, v, FSP_CMD_TIMEOUT2);
 rc = 0;

 out:
 ps2_end_command(ps2dev);
 dev_dbg(&ps2dev->serio->dev, "WRITE REG: 0x%02x to 0x%02x (rc = %d)\n",
  reg_addr, reg_val, rc);
 return rc;
}
