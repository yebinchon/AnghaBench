
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CCM_PCDR0_SSI1BAUDDIV_MASK ;
 int CCM_PCDR0_SSI1BAUDDIV_OFFSET ;
 int PCDR0 () ;
 unsigned long _clk_ssix_recalc (struct clk*,int) ;

__attribute__((used)) static unsigned long _clk_ssi1_recalc(struct clk *clk)
{
 return _clk_ssix_recalc(clk,
  (PCDR0() & CCM_PCDR0_SSI1BAUDDIV_MASK)
  >> CCM_PCDR0_SSI1BAUDDIV_OFFSET);
}
