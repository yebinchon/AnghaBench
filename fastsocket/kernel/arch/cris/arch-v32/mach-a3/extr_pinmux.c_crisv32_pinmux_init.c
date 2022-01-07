
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT_A ;
 int PORT_B ;
 int PORT_C ;
 int REG_WR_INT (int ,int ,int ,int ) ;
 int crisv32_pinmux_alloc (int ,int ,int,int ) ;
 int pinmux ;
 int pinmux_gpio ;
 int regi_pinmux ;
 int rw_hwprot ;

int
crisv32_pinmux_init(void)
{
 static int initialized;

 if (!initialized) {
  initialized = 1;
  REG_WR_INT(pinmux, regi_pinmux, rw_hwprot, 0);
  crisv32_pinmux_alloc(PORT_A, 0, 31, pinmux_gpio);
  crisv32_pinmux_alloc(PORT_B, 0, 31, pinmux_gpio);
  crisv32_pinmux_alloc(PORT_C, 0, 15, pinmux_gpio);
 }

 return 0;
}
