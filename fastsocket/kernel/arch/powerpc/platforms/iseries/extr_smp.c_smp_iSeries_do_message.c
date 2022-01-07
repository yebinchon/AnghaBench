
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HvCall_sendIPI (int *) ;
 int * iSeries_smp_message ;
 int * paca ;
 int set_bit (int,int *) ;

__attribute__((used)) static inline void smp_iSeries_do_message(int cpu, int msg)
{
 set_bit(msg, &iSeries_smp_message[cpu]);
 HvCall_sendIPI(&(paca[cpu]));
}
