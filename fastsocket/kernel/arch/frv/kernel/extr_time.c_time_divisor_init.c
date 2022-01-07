
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short HZ ;
 int TCTR_MODE_2 ;
 int TCTR_RL_RW_LH8 ;
 int TCTR_SC_CTR0 ;
 unsigned short __res_bus_clock_speed_HZ ;
 int __set_TCSR_DATA (int ,unsigned short) ;
 int __set_TCTR (int) ;
 int __set_TPRV (unsigned short) ;
 int __set_TxCKSL_DATA (int ,unsigned short) ;

void time_divisor_init(void)
{
 unsigned short base, pre, prediv;


 pre = 1;
 prediv = 4;
 base = __res_bus_clock_speed_HZ / pre / HZ / (1 << prediv);

 __set_TPRV(pre);
 __set_TxCKSL_DATA(0, prediv);
 __set_TCTR(TCTR_SC_CTR0 | TCTR_RL_RW_LH8 | TCTR_MODE_2);
 __set_TCSR_DATA(0, base & 0xff);
 __set_TCSR_DATA(0, base >> 8);
}
