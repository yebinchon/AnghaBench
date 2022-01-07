
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_sysboot_value () ;

__attribute__((used)) static u32 is_gpmc_muxed(void)
{
 u32 mux;
 mux = get_sysboot_value();
 if ((mux & 0xF) == 0xd)
  return 1;
 if (mux & 0x2)
  return 1;
 else
  return 0;
}
