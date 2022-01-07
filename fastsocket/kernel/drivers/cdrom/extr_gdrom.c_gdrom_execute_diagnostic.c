
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cd_info; } ;


 int GDROM_COM_EXECDIAG ;
 int GDROM_ERROR_REG ;
 int GDROM_STATUSCOMMAND_REG ;
 char ctrl_inb (int ) ;
 int ctrl_outb (int ,int ) ;
 TYPE_1__ gd ;
 int gdrom_hardreset (int ) ;
 int gdrom_wait_busy_sleeps () ;
 int gdrom_wait_clrbusy () ;

__attribute__((used)) static char gdrom_execute_diagnostic(void)
{
 gdrom_hardreset(gd.cd_info);
 if (!gdrom_wait_clrbusy())
  return 0;
 ctrl_outb(GDROM_COM_EXECDIAG, GDROM_STATUSCOMMAND_REG);
 if (!gdrom_wait_busy_sleeps())
  return 0;
 return ctrl_inb(GDROM_ERROR_REG);
}
