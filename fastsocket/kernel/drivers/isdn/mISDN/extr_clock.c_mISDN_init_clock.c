
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int * debug ;
 int do_gettimeofday (int *) ;
 int iclock_tv ;

void
mISDN_init_clock(u_int *dp)
{
 debug = dp;
 do_gettimeofday(&iclock_tv);
}
