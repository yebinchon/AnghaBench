
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ene_device {int dummy; } ;


 int ene_clear_reg_mask (struct ene_device*,int ,int ) ;
 int ene_set_reg_mask (struct ene_device*,int ,int ) ;

__attribute__((used)) static void ene_set_clear_reg_mask(struct ene_device *dev, u16 reg, u8 mask,
        bool set)
{
 if (set)
  ene_set_reg_mask(dev, reg, mask);
 else
  ene_clear_reg_mask(dev, reg, mask);
}
