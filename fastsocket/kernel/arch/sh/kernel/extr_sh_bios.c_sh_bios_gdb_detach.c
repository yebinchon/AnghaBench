
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOS_CALL_GDB_DETACH ;
 int sh_bios_call (int ,int ,int ,int ,int ) ;

void sh_bios_gdb_detach(void)
{
 sh_bios_call(BIOS_CALL_GDB_DETACH, 0, 0, 0, 0);
}
