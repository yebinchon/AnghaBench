
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ input_adb_none ;
 scalar_t__ input_type ;
 int udbg_adb_local_getc () ;
 int udbg_adb_old_getc () ;
 scalar_t__ udbg_adb_use_btext ;

__attribute__((used)) static int udbg_adb_getc(void)
{




 if (udbg_adb_old_getc)
  return udbg_adb_old_getc();
 return -1;
}
