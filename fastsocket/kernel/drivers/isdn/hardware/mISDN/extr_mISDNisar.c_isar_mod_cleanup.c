
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_notice (char*) ;

__attribute__((used)) static void isar_mod_cleanup(void)
{
 pr_notice("mISDN: ISAR module unloaded\n");
}
