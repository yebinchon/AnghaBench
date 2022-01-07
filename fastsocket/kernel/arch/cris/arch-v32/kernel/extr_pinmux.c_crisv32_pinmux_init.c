
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pa7; int pa6; int pa5; int pa4; int pa3; int pa2; int pa1; int pa0; } ;
typedef TYPE_1__ reg_pinmux_rw_pa ;


 int PORT_B ;
 int PORT_C ;
 int PORT_D ;
 int PORT_E ;
 scalar_t__ PORT_PINS ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int crisv32_pinmux_alloc (int ,int ,scalar_t__,int ) ;
 int pinmux ;
 int pinmux_gpio ;
 int regi_pinmux ;
 int regk_pinmux_yes ;
 int rw_pa ;

int
crisv32_pinmux_init(void)
{
 static int initialized = 0;

 if (!initialized) {
  reg_pinmux_rw_pa pa = REG_RD(pinmux, regi_pinmux, rw_pa);
  initialized = 1;
  pa.pa0 = pa.pa1 = pa.pa2 = pa.pa3 =
  pa.pa4 = pa.pa5 = pa.pa6 = pa.pa7 = regk_pinmux_yes;
  REG_WR(pinmux, regi_pinmux, rw_pa, pa);
  crisv32_pinmux_alloc(PORT_B, 0, PORT_PINS - 1, pinmux_gpio);
  crisv32_pinmux_alloc(PORT_C, 0, PORT_PINS - 1, pinmux_gpio);
  crisv32_pinmux_alloc(PORT_D, 0, PORT_PINS - 1, pinmux_gpio);
  crisv32_pinmux_alloc(PORT_E, 0, PORT_PINS - 1, pinmux_gpio);
 }

 return 0;
}
