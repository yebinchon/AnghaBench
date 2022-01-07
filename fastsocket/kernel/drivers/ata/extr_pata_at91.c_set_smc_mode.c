
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_ide_info {int mode; int cs; } ;


 int AT91_SMC_MODE (int ) ;
 int at91_sys_write (int ,int ) ;

__attribute__((used)) static void set_smc_mode(struct at91_ide_info *info)
{
 at91_sys_write(AT91_SMC_MODE(info->cs), info->mode);
 return;
}
