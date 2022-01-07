
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int vpif_clr_bit (scalar_t__,scalar_t__) ;
 int vpif_set_bit (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vpif_wr_bit(u32 reg, u32 bit, u32 val)
{
 if (val)
  vpif_set_bit(reg, bit);
 else
  vpif_clr_bit(reg, bit);
}
