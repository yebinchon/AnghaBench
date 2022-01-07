
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mv64x60_udbg_getc () ;
 int mv64x60_udbg_testc () ;

__attribute__((used)) static int mv64x60_udbg_getc_poll(void)
{
 if (!mv64x60_udbg_testc())
  return -1;

 return mv64x60_udbg_getc();
}
