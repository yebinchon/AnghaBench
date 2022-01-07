
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;


 int CMD ;
 int CMD_BUSY_TIMEOUT ;
 int EBUSY ;
 int HERMES_CMD_BUSY ;
 int PARAM0 ;
 int PARAM1 ;
 int PARAM2 ;
 int hermes_read_regn (struct hermes*,int ) ;
 int hermes_write_regn (struct hermes*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int hermes_issue_cmd(struct hermes *hw, u16 cmd, u16 param0,
       u16 param1, u16 param2)
{
 int k = CMD_BUSY_TIMEOUT;
 u16 reg;


 reg = hermes_read_regn(hw, CMD);
 while ((reg & HERMES_CMD_BUSY) && k) {
  k--;
  udelay(1);
  reg = hermes_read_regn(hw, CMD);
 }
 if (reg & HERMES_CMD_BUSY)
  return -EBUSY;

 hermes_write_regn(hw, PARAM2, param2);
 hermes_write_regn(hw, PARAM1, param1);
 hermes_write_regn(hw, PARAM0, param0);
 hermes_write_regn(hw, CMD, cmd);

 return 0;
}
