
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __putstr (int,char*) ;

__attribute__((used)) static void error(char *x)
{
 __putstr(1, "\n\n");
 __putstr(1, x);
 __putstr(1, "\n\n -- System halted");

 while (1)
  asm("hlt");
}
