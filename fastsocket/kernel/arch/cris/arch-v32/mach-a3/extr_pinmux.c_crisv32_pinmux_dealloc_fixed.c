
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* i2c1_sda3; void* i2c1_sda2; void* i2c1_sda1; void* i2c1_sen; void* i2c1; void* i2c0; void* pwm2; void* pwm1; void* pwm0; void* sser; void* ser4; void* ser3; void* ser2; void* ser1; void* vout_sync; void* vout; void* tg_clk; void* tg; void* geth; void* eth_mdio; void* eth; } ;
typedef TYPE_1__ reg_pinmux_rw_hwprot ;
typedef enum fixed_function { ____Placeholder_fixed_function } fixed_function ;


 int EINVAL ;
 int PORT_A ;
 int PORT_B ;
 int PORT_C ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int crisv32_pinmux_dealloc (int ,int,int) ;
 int crisv32_pinmux_init () ;
 int memcpy (char*,char*,int) ;
 int pinmux ;







 int pinmux_lock ;
 char* pins ;
 int regi_pinmux ;
 void* regk_pinmux_no ;
 int rw_hwprot ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
crisv32_pinmux_dealloc_fixed(enum fixed_function function)
{
 int ret = -EINVAL;
 char saved[sizeof pins];
 unsigned long flags;

 spin_lock_irqsave(&pinmux_lock, flags);


 memcpy(saved, pins, sizeof pins);

 crisv32_pinmux_init();

 reg_pinmux_rw_hwprot hwprot = REG_RD(pinmux, regi_pinmux, rw_hwprot);

 switch (function) {
 case 145:
  ret = crisv32_pinmux_dealloc(PORT_B, 8, 23);
  ret |= crisv32_pinmux_dealloc(PORT_B, 24, 25);
  ret |= crisv32_pinmux_dealloc(PORT_B, 0, 7);
  hwprot.eth = hwprot.eth_mdio = hwprot.geth = regk_pinmux_no;
  break;
 case 129:
  ret = crisv32_pinmux_dealloc(PORT_B, 27, 29);
  hwprot.tg_clk = regk_pinmux_no;
  break;
 case 130:
  ret = crisv32_pinmux_dealloc(PORT_B, 27, 31);
  ret |= crisv32_pinmux_dealloc(PORT_C, 0, 15);
  hwprot.tg = hwprot.tg_clk = regk_pinmux_no;
  break;
 case 128:
  ret = crisv32_pinmux_dealloc(PORT_A, 8, 18);
  hwprot.vout = hwprot.vout_sync = regk_pinmux_no;
  break;
 case 135:
  ret = crisv32_pinmux_dealloc(PORT_A, 24, 25);
  hwprot.ser1 = regk_pinmux_no;
  break;
 case 134:
  ret = crisv32_pinmux_dealloc(PORT_A, 26, 27);
  hwprot.ser2 = regk_pinmux_no;
  break;
 case 133:
  ret = crisv32_pinmux_dealloc(PORT_A, 28, 29);
  hwprot.ser3 = regk_pinmux_no;
  break;
 case 132:
  ret = crisv32_pinmux_dealloc(PORT_A, 30, 31);
  hwprot.ser4 = regk_pinmux_no;
  break;
 case 131:
  ret = crisv32_pinmux_dealloc(PORT_A, 19, 23);
  hwprot.sser = regk_pinmux_no;
  break;
 case 138:
  ret = crisv32_pinmux_dealloc(PORT_A, 30, 30);
  hwprot.pwm0 = regk_pinmux_no;
  break;
 case 137:
  ret = crisv32_pinmux_dealloc(PORT_A, 31, 31);
  hwprot.pwm1 = regk_pinmux_no;
  break;
 case 136:
  ret = crisv32_pinmux_dealloc(PORT_B, 26, 26);
  hwprot.pwm2 = regk_pinmux_no;
  break;
 case 144:
  ret = crisv32_pinmux_dealloc(PORT_A, 0, 1);
  hwprot.i2c0 = regk_pinmux_no;
  break;
 case 143:
  ret = crisv32_pinmux_dealloc(PORT_A, 2, 3);
  hwprot.i2c1 = regk_pinmux_no;
  break;
 case 142:
  ret = crisv32_pinmux_dealloc(PORT_A, 2, 3);
  ret |= crisv32_pinmux_dealloc(PORT_A, 7, 7);
  hwprot.i2c1 = hwprot.i2c1_sen = regk_pinmux_no;
  break;
 case 141:
  ret = crisv32_pinmux_dealloc(PORT_A, 2, 4);
  hwprot.i2c1_sda1 = regk_pinmux_no;
  break;
 case 140:
  ret = crisv32_pinmux_dealloc(PORT_A, 2, 3);
  ret |= crisv32_pinmux_dealloc(PORT_A, 5, 5);
  hwprot.i2c1_sda2 = regk_pinmux_no;
  break;
 case 139:
  ret = crisv32_pinmux_dealloc(PORT_A, 2, 3);
  ret |= crisv32_pinmux_dealloc(PORT_A, 6, 6);
  hwprot.i2c1_sda3 = regk_pinmux_no;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (!ret)
  REG_WR(pinmux, regi_pinmux, rw_hwprot, hwprot);
 else
  memcpy(pins, saved, sizeof pins);

  spin_unlock_irqrestore(&pinmux_lock, flags);

  return ret;
}
