
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int dummy; } ;


 int BUG_ON (int) ;
 int DRV ;
 int E2P_CMD ;
 int E2P_CMD_EPC_BUSY_ ;
 int E2P_CMD_EPC_CMD_RELOAD_ ;
 int EIO ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int smsc_dbg (int ,char*) ;
 int smsc_warn (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int smsc9420_eeprom_reload(struct smsc9420_pdata *pd)
{
 int timeout = 100000;

 BUG_ON(!pd);

 if (smsc9420_reg_read(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_) {
  smsc_dbg(DRV, "smsc9420_eeprom_reload: Eeprom busy");
  return -EIO;
 }

 smsc9420_reg_write(pd, E2P_CMD,
  (E2P_CMD_EPC_BUSY_ | E2P_CMD_EPC_CMD_RELOAD_));

 do {
  udelay(10);
  if (!(smsc9420_reg_read(pd, E2P_CMD) & E2P_CMD_EPC_BUSY_))
   return 0;
 } while (timeout--);

 smsc_warn(DRV, "smsc9420_eeprom_reload: Eeprom timed out");
 return -EIO;
}
