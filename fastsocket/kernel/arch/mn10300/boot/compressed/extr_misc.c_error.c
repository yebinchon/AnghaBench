
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kputs (char const*) ;

__attribute__((used)) static void error(const char *x)
{
 kputs("\n\n");
 kputs(x);
 kputs("\n\n -- System halted");

 while (1)
            ;
}
