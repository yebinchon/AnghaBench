
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* timer; void* eth1_mgm; void* eth1; void* ata; void* ata2; void* ata1; void* ata0; void* sser1; void* sser0; void* ser3; void* ser2; void* ser1; } ;
typedef TYPE_1__ reg_pinmux_rw_hwprot ;
typedef enum fixed_function { ____Placeholder_fixed_function } fixed_function ;


 int EINVAL ;
 int PORT_B ;
 int PORT_C ;
 int PORT_D ;
 int PORT_E ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int crisv32_pinmux_alloc (int ,int,int,int ) ;
 int crisv32_pinmux_init () ;
 int memcpy (char*,char*,int) ;
 int pinmux ;






 int pinmux_fixed ;
 int pinmux_lock ;






 char* pins ;
 int regi_pinmux ;
 void* regk_pinmux_yes ;
 int rw_hwprot ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int crisv32_pinmux_alloc_fixed(enum fixed_function function)
{
 int ret = -EINVAL;
 char saved[sizeof pins];
 unsigned long flags;

 spin_lock_irqsave(&pinmux_lock, flags);


 memcpy(saved, pins, sizeof pins);

 crisv32_pinmux_init();

 reg_pinmux_rw_hwprot hwprot = REG_RD(pinmux, regi_pinmux, rw_hwprot);

 switch (function) {
 case 133:
  ret = crisv32_pinmux_alloc(PORT_C, 4, 7, pinmux_fixed);
  hwprot.ser1 = regk_pinmux_yes;
  break;
 case 132:
  ret = crisv32_pinmux_alloc(PORT_C, 8, 11, pinmux_fixed);
  hwprot.ser2 = regk_pinmux_yes;
  break;
 case 131:
  ret = crisv32_pinmux_alloc(PORT_C, 12, 15, pinmux_fixed);
  hwprot.ser3 = regk_pinmux_yes;
  break;
 case 130:
  ret = crisv32_pinmux_alloc(PORT_C, 0, 3, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_C, 16, 16, pinmux_fixed);
  hwprot.sser0 = regk_pinmux_yes;
  break;
 case 129:
  ret = crisv32_pinmux_alloc(PORT_D, 0, 4, pinmux_fixed);
  hwprot.sser1 = regk_pinmux_yes;
  break;
 case 138:
  ret = crisv32_pinmux_alloc(PORT_D, 5, 7, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_D, 15, 17, pinmux_fixed);
  hwprot.ata0 = regk_pinmux_yes;
  break;
 case 137:
  ret = crisv32_pinmux_alloc(PORT_D, 0, 4, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_E, 17, 17, pinmux_fixed);
  hwprot.ata1 = regk_pinmux_yes;
  break;
 case 136:
  ret = crisv32_pinmux_alloc(PORT_C, 11, 15, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_E, 3, 3, pinmux_fixed);
  hwprot.ata2 = regk_pinmux_yes;
  break;
 case 135:
  ret = crisv32_pinmux_alloc(PORT_C, 8, 10, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_C, 0, 2, pinmux_fixed);
  hwprot.ata2 = regk_pinmux_yes;
  break;
 case 139:
  ret = crisv32_pinmux_alloc(PORT_B, 0, 15, pinmux_fixed);
  ret |= crisv32_pinmux_alloc(PORT_D, 8, 15, pinmux_fixed);
  hwprot.ata = regk_pinmux_yes;
  break;
 case 134:
  ret = crisv32_pinmux_alloc(PORT_E, 0, 17, pinmux_fixed);
  hwprot.eth1 = regk_pinmux_yes;
  hwprot.eth1_mgm = regk_pinmux_yes;
  break;
 case 128:
  ret = crisv32_pinmux_alloc(PORT_C, 16, 16, pinmux_fixed);
  hwprot.timer = regk_pinmux_yes;
  spin_unlock_irqrestore(&pinmux_lock, flags);
  return ret;
 }

 if (!ret)
  REG_WR(pinmux, regi_pinmux, rw_hwprot, hwprot);
 else
  memcpy(pins, saved, sizeof pins);

 spin_unlock_irqrestore(&pinmux_lock, flags);

 return ret;
}
