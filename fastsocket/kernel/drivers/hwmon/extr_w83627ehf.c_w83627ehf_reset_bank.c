
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627ehf_data {scalar_t__ addr; } ;


 scalar_t__ ADDR_REG_OFFSET ;
 scalar_t__ DATA_REG_OFFSET ;
 int W83627EHF_REG_BANK ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static inline void w83627ehf_reset_bank(struct w83627ehf_data *data, u16 reg)
{
 if (reg & 0xff00) {
  outb_p(W83627EHF_REG_BANK, data->addr + ADDR_REG_OFFSET);
  outb_p(0, data->addr + DATA_REG_OFFSET);
 }
}
