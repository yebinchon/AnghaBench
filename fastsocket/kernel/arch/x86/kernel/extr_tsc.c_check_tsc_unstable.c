
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tsc_unstable ;

int check_tsc_unstable(void)
{
 return tsc_unstable;
}
