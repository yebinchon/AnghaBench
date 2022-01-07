
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BONITO_BOOT_BASE ;
 scalar_t__ ioremap_nocache (int ,int) ;
 int mach_prepare_reboot () ;
 void stub1 () ;

__attribute__((used)) static void loongson_restart(char *command)
{

 mach_prepare_reboot();


 ((void (*)(void))ioremap_nocache(BONITO_BOOT_BASE, 4)) ();
}
