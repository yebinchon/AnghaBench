
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSC0 ;
 int tosa_poweroff () ;

__attribute__((used)) static void tosa_restart(char mode, const char *cmd)
{

 if((MSC0 & 0xffff0000) == 0x7ff00000)
  MSC0 = (MSC0 & 0xffff) | 0x7ee00000;

 tosa_poweroff();
}
