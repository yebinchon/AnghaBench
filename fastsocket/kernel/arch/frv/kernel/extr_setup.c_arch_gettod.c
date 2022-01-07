
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void arch_gettod(int *year, int *mon, int *day, int *hour,
   int *min, int *sec)
{
 *year = *mon = *day = *hour = *min = *sec = 0;
}
