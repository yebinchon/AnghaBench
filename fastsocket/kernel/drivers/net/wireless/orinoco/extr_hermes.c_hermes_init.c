
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int inten; } ;


 int CMD ;
 int CMD_BUSY_TIMEOUT ;
 int ENODEV ;
 int EVACK ;
 int EVSTAT ;
 int HERMES_CMD_BUSY ;
 int HERMES_CMD_INIT ;
 int INTEN ;
 int hermes_doicmd_wait (struct hermes*,int ,int ,int ,int ,int *) ;
 int hermes_read_regn (struct hermes*,int ) ;
 int hermes_write_regn (struct hermes*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int hermes_init(struct hermes *hw)
{
 u16 reg;
 int err = 0;
 int k;


 hw->inten = 0x0;
 hermes_write_regn(hw, INTEN, 0);
 hermes_write_regn(hw, EVACK, 0xffff);







 k = CMD_BUSY_TIMEOUT;
 reg = hermes_read_regn(hw, CMD);
 while (k && (reg & HERMES_CMD_BUSY)) {
  if (reg == 0xffff)

   return -ENODEV;

  k--;
  udelay(1);
  reg = hermes_read_regn(hw, CMD);
 }







 reg = hermes_read_regn(hw, EVSTAT);
 hermes_write_regn(hw, EVACK, reg);



 err = hermes_doicmd_wait(hw, HERMES_CMD_INIT, 0, 0, 0, ((void*)0));

 return err;
}
