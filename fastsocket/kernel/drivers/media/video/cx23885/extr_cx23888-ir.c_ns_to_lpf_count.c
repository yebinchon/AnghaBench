
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CX23888_IR_REFCLK_FREQ ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int count_to_lpf_count (int ) ;

__attribute__((used)) static inline u16 ns_to_lpf_count(unsigned int ns)
{
 return count_to_lpf_count(
  DIV_ROUND_CLOSEST(CX23888_IR_REFCLK_FREQ / 1000000 * ns, 1000));
}
