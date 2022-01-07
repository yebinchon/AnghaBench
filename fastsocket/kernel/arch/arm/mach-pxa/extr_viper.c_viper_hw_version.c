
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VIPER_VERSION ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u8 viper_hw_version(void)
{
 u8 v1, v2;
 unsigned long flags;

 local_irq_save(flags);

 VIPER_VERSION = 0;
 v1 = VIPER_VERSION;
 VIPER_VERSION = 0xff;
 v2 = VIPER_VERSION;

 v1 = (v1 != v2 || v1 == 0xff) ? 0 : v1;

 local_irq_restore(flags);
 return v1;
}
