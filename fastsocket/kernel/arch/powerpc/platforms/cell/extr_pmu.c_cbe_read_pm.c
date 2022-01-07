
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum pm_reg_name { ____Placeholder_pm_reg_name } pm_reg_name ;


 int READ_MMIO_UPPER32 (int ,int const) ;
 int READ_SHADOW_REG (int ,int const) ;
u32 cbe_read_pm(u32 cpu, enum pm_reg_name reg)
{
 u32 val = 0;

 switch (reg) {
 case 133:
  READ_SHADOW_REG(val, 133);
  break;

 case 135:
  READ_SHADOW_REG(val, 135);
  break;

 case 128:
  READ_MMIO_UPPER32(val, 128);
  break;

 case 134:
  READ_SHADOW_REG(val, 134);
  break;

 case 129:
  READ_MMIO_UPPER32(val, 129);
  break;

 case 132:
  READ_SHADOW_REG(val, 132);
  break;

 case 131:
  READ_MMIO_UPPER32(val, 131);
  break;

 case 130:
  READ_SHADOW_REG(val, 130);
  break;
 }

 return val;
}
