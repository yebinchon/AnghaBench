
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct highlander_i2c_dev {scalar_t__ base; } ;


 scalar_t__ SMMR ;
 int SMMR_SP ;
 int SMMR_TMMD ;
 scalar_t__ iic_force_normal ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static void highlander_i2c_setup(struct highlander_i2c_dev *dev)
{
 u16 smmr;

 smmr = ioread16(dev->base + SMMR);
 smmr |= SMMR_TMMD;

 if (iic_force_normal)
  smmr &= ~SMMR_SP;
 else
  smmr |= SMMR_SP;

 iowrite16(smmr, dev->base + SMMR);
}
