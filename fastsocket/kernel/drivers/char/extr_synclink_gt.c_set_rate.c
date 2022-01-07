
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slgt_info {unsigned int base_clock; } ;


 int BDR ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static void set_rate(struct slgt_info *info, u32 rate)
{
 unsigned int div;
 unsigned int osc = info->base_clock;







 if (rate) {
  div = osc/rate;
  if (!(osc % rate) && div)
   div--;
  wr_reg16(info, BDR, (unsigned short)div);
 }
}
