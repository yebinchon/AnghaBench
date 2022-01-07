
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int dummy; } ;


 int GPIO_CFG ;
 unsigned int GPIO_CFG_EEPR_EN_ ;
 int msleep (int) ;
 unsigned int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,unsigned int) ;

__attribute__((used)) static void smsc9420_eeprom_enable_access(struct smsc9420_pdata *pd)
{
 unsigned int temp = smsc9420_reg_read(pd, GPIO_CFG);
 temp &= ~GPIO_CFG_EEPR_EN_;
 smsc9420_reg_write(pd, GPIO_CFG, temp);
 msleep(1);
}
