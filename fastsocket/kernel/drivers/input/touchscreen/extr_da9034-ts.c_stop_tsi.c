
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int da9034_dev; } ;


 int DA9034_AUTO_CTRL2 ;
 int DA9034_AUTO_TSI_EN ;
 int da903x_clr_bits (int ,int ,int ) ;

__attribute__((used)) static inline int stop_tsi(struct da9034_touch *touch)
{
 return da903x_clr_bits(touch->da9034_dev,
   DA9034_AUTO_CTRL2, DA9034_AUTO_TSI_EN);
}
