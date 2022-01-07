
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef scalar_t__ cycle_t ;


 int A_SCD_TIMER_REGISTER (int ,int ) ;
 unsigned int G_SCD_TIMER_CNT (int ) ;
 int IOADDR (int ) ;
 int R_SCD_TIMER_CNT ;
 int SB1250_HPT_NUM ;
 scalar_t__ SB1250_HPT_VALUE ;
 int __raw_readq (int ) ;

__attribute__((used)) static cycle_t sb1250_hpt_read(struct clocksource *cs)
{
 unsigned int count;

 count = G_SCD_TIMER_CNT(__raw_readq(IOADDR(A_SCD_TIMER_REGISTER(SB1250_HPT_NUM, R_SCD_TIMER_CNT))));

 return SB1250_HPT_VALUE - count;
}
