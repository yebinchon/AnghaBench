
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {scalar_t__ mmio_base; int clk; } ;


 int BUG () ;
 int EINVAL ;
 scalar_t__ MX1_PWMP ;
 scalar_t__ MX1_PWMS ;
 scalar_t__ MX3_PWMCR ;
 int MX3_PWMCR_CLKSRC_IPG ;
 int MX3_PWMCR_CLKSRC_IPG_HIGH ;
 int MX3_PWMCR_EN ;
 int MX3_PWMCR_PRESCALER (unsigned long) ;
 scalar_t__ MX3_PWMPR ;
 scalar_t__ MX3_PWMSAR ;
 unsigned long long clk_get_rate (int ) ;
 scalar_t__ cpu_is_mx1 () ;
 scalar_t__ cpu_is_mx21 () ;
 scalar_t__ cpu_is_mx25 () ;
 scalar_t__ cpu_is_mx27 () ;
 scalar_t__ cpu_is_mx3 () ;
 int do_div (unsigned long long,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
{
 if (pwm == ((void*)0) || period_ns == 0 || duty_ns > period_ns)
  return -EINVAL;

 if (cpu_is_mx27() || cpu_is_mx3() || cpu_is_mx25()) {
  unsigned long long c;
  unsigned long period_cycles, duty_cycles, prescale;
  u32 cr;

  c = clk_get_rate(pwm->clk);
  c = c * period_ns;
  do_div(c, 1000000000);
  period_cycles = c;

  prescale = period_cycles / 0x10000 + 1;

  period_cycles /= prescale;
  c = (unsigned long long)period_cycles * duty_ns;
  do_div(c, period_ns);
  duty_cycles = c;

  writel(duty_cycles, pwm->mmio_base + MX3_PWMSAR);
  writel(period_cycles, pwm->mmio_base + MX3_PWMPR);

  cr = MX3_PWMCR_PRESCALER(prescale) | MX3_PWMCR_EN;

  if (cpu_is_mx25())
   cr |= MX3_PWMCR_CLKSRC_IPG;
  else
   cr |= MX3_PWMCR_CLKSRC_IPG_HIGH;

  writel(cr, pwm->mmio_base + MX3_PWMCR);
 } else if (cpu_is_mx1() || cpu_is_mx21()) {
  u32 max = readl(pwm->mmio_base + MX1_PWMP);
  u32 p = max * duty_ns / period_ns;
  writel(max - p, pwm->mmio_base + MX1_PWMS);
 } else {
  BUG();
 }

 return 0;
}
