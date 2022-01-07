
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* i2c1_sda3; void* i2c1; void* i2c1_sda2; void* i2c1_sda1; void* i2c1_sen; void* i2c0; void* pwm2; void* pwm1; void* pwm0; void* pio; void* sser; void* sser_ser_dma6_7; void* ser4; void* ser3; void* ser2; void* ser1; void* vout_sync; void* vout; void* strdma0_2_video; void* tg_clk; void* tg; void* ccd_tg_200; void* ccd_tg_100; void* geth; void* eth_mdio; void* eth; void* dma0_1_eth; } ;
typedef TYPE_1__ reg_pinmux_rw_hwprot ;
typedef TYPE_1__ reg_clkgen_rw_clk_ctrl ;
typedef enum fixed_function { ____Placeholder_fixed_function } fixed_function ;


 int EINVAL ;
 int PORT_A ;
 int PORT_B ;
 int PORT_C ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int clkgen ;
 int crisv32_pinmux_alloc (int ,int,int,int ) ;
 int crisv32_pinmux_init () ;
 int memcpy (char*,char*,int) ;
 int pinmux ;

 int pinmux_fixed ;







 int pinmux_lock ;
 char* pins ;
 int regi_clkgen ;
 int regi_pinmux ;
 void* regk_clkgen_yes ;
 void* regk_pinmux_yes ;
 int rw_clk_ctrl ;
 int rw_hwprot ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
crisv32_pinmux_alloc_fixed(enum fixed_function function)
{
 int ret = -EINVAL;
 char saved[sizeof pins];
 unsigned long flags;

 spin_lock_irqsave(&pinmux_lock, flags);


 memcpy(saved, pins, sizeof pins);

 crisv32_pinmux_init();

 reg_pinmux_rw_hwprot hwprot = REG_RD(pinmux, regi_pinmux, rw_hwprot);
 reg_clkgen_rw_clk_ctrl clk_ctrl = REG_RD(clkgen, regi_clkgen,
  rw_clk_ctrl);

 switch (function) {
 case 147:
  clk_ctrl.eth = regk_clkgen_yes;
  clk_ctrl.dma0_1_eth = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_B, 8, 23, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_B, 24, 25, pinmux_fixed);
  hwprot.eth = hwprot.eth_mdio = regk_pinmux_yes;
  break;
 case 146:
  ret = crisv32_pinmux_alloc(PORT_B, 0, 7, pinmux_fixed);
  hwprot.geth = regk_pinmux_yes;
  break;
 case 129:
  clk_ctrl.ccd_tg_100 = clk_ctrl.ccd_tg_200 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_B, 27, 29, pinmux_fixed);
  hwprot.tg_clk = regk_pinmux_yes;
  break;
 case 130:
  clk_ctrl.ccd_tg_100 = clk_ctrl.ccd_tg_200 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_B, 27, 31, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_C, 0, 15, pinmux_fixed);
  hwprot.tg = hwprot.tg_clk = regk_pinmux_yes;
  break;
 case 128:
  clk_ctrl.strdma0_2_video = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 8, 18, pinmux_fixed);
  hwprot.vout = hwprot.vout_sync = regk_pinmux_yes;
  break;
 case 135:
  clk_ctrl.sser_ser_dma6_7 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 24, 25, pinmux_fixed);
  hwprot.ser1 = regk_pinmux_yes;
  break;
 case 134:
  clk_ctrl.sser_ser_dma6_7 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 26, 27, pinmux_fixed);
  hwprot.ser2 = regk_pinmux_yes;
  break;
 case 133:
  clk_ctrl.sser_ser_dma6_7 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 28, 29, pinmux_fixed);
  hwprot.ser3 = regk_pinmux_yes;
  break;
 case 132:
  clk_ctrl.sser_ser_dma6_7 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 30, 31, pinmux_fixed);
  hwprot.ser4 = regk_pinmux_yes;
  break;
 case 131:
  clk_ctrl.sser_ser_dma6_7 = regk_clkgen_yes;
  ret = crisv32_pinmux_alloc(PORT_A, 19, 23, pinmux_fixed);
  hwprot.sser = regk_pinmux_yes;
  break;
 case 139:
  hwprot.pio = regk_pinmux_yes;
  ret = 0;
  break;
 case 138:
  ret = crisv32_pinmux_alloc(PORT_A, 30, 30, pinmux_fixed);
  hwprot.pwm0 = regk_pinmux_yes;
  break;
 case 137:
  ret = crisv32_pinmux_alloc(PORT_A, 31, 31, pinmux_fixed);
  hwprot.pwm1 = regk_pinmux_yes;
  break;
 case 136:
  ret = crisv32_pinmux_alloc(PORT_B, 26, 26, pinmux_fixed);
  hwprot.pwm2 = regk_pinmux_yes;
  break;
 case 145:
  ret = crisv32_pinmux_alloc(PORT_A, 0, 1, pinmux_fixed);
  hwprot.i2c0 = regk_pinmux_yes;
  break;
 case 144:
  ret = crisv32_pinmux_alloc(PORT_A, 2, 3, pinmux_fixed);
  hwprot.i2c1 = regk_pinmux_yes;
  break;
 case 143:
  ret = crisv32_pinmux_alloc(PORT_A, 2, 3, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_A, 7, 7, pinmux_fixed);
  hwprot.i2c1 = hwprot.i2c1_sen = regk_pinmux_yes;
  break;
 case 142:
  ret = crisv32_pinmux_alloc(PORT_A, 2, 4, pinmux_fixed);
  hwprot.i2c1 = hwprot.i2c1_sda1 = regk_pinmux_yes;
  break;
 case 141:
  ret = crisv32_pinmux_alloc(PORT_A, 2, 3, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_A, 5, 5, pinmux_fixed);
  hwprot.i2c1 = hwprot.i2c1_sda2 = regk_pinmux_yes;
  break;
 case 140:
  ret = crisv32_pinmux_alloc(PORT_A, 2, 3, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_A, 6, 6, pinmux_fixed);
  hwprot.i2c1 = hwprot.i2c1_sda3 = regk_pinmux_yes;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (!ret) {
  REG_WR(pinmux, regi_pinmux, rw_hwprot, hwprot);
  REG_WR(clkgen, regi_clkgen, rw_clk_ctrl, clk_ctrl);
 } else
  memcpy(pins, saved, sizeof pins);

  spin_unlock_irqrestore(&pinmux_lock, flags);

  return ret;
}
