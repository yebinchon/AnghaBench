
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cx88_core {int name; } ;


 int MO_DEVICE_STATUS ;
 int MO_PLL_REG ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int do_div (int,int ) ;
 int dprintk (int,char*,...) ;
 int msleep (int) ;
 int printk (char*,int ) ;
 int xtal ;

__attribute__((used)) static int set_pll(struct cx88_core *core, int prescale, u32 ofreq)
{
 static u32 pre[] = { 0, 0, 0, 3, 2, 1 };
 u64 pll;
 u32 reg;
 int i;

 if (prescale < 2)
  prescale = 2;
 if (prescale > 5)
  prescale = 5;

 pll = ofreq * 8 * prescale * (u64)(1 << 20);
 do_div(pll,xtal);
 reg = (pll & 0x3ffffff) | (pre[prescale] << 26);
 if (((reg >> 20) & 0x3f) < 14) {
  printk("%s/0: pll out of range\n",core->name);
  return -1;
 }

 dprintk(1,"set_pll:    MO_PLL_REG       0x%08x [old=0x%08x,freq=%d]\n",
  reg, cx_read(MO_PLL_REG), ofreq);
 cx_write(MO_PLL_REG, reg);
 for (i = 0; i < 100; i++) {
  reg = cx_read(MO_DEVICE_STATUS);
  if (reg & (1<<2)) {
   dprintk(1,"pll locked [pre=%d,ofreq=%d]\n",
    prescale,ofreq);
   return 0;
  }
  dprintk(1,"pll not locked yet, waiting ...\n");
  msleep(10);
 }
 dprintk(1,"pll NOT locked [pre=%d,ofreq=%d]\n",prescale,ofreq);
 return -1;
}
