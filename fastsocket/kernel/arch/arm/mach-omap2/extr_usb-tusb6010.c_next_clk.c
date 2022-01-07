
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
next_clk(unsigned t1_NS, unsigned t2_ps, unsigned fclk_ps)
{
 unsigned t1_ps = t1_NS * 1000;
 unsigned t1_f, t2_f;

 if ((t1_ps + fclk_ps) < t2_ps)
  return t2_ps / 1000;

 t1_f = (t1_ps + fclk_ps - 1) / fclk_ps;
 t2_f = (t2_ps + fclk_ps - 1) / fclk_ps;

 if (t1_f >= t2_f)
  t2_f = t1_f + 1;

 return (t2_f * fclk_ps) / 1000;
}
