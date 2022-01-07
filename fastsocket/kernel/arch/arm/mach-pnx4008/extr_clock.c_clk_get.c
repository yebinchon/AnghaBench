
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int owner; int name; } ;


 int ARRAY_SIZE (struct clk**) ;
 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 int clock_lock () ;
 int clock_unlock () ;
 struct clk** onchip_clks ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ try_module_get (int ) ;

struct clk *clk_get(struct device *dev, const char *id)
{
 struct clk *clk = ERR_PTR(-ENOENT);
 struct clk **clkp;

 clock_lock();
 for (clkp = onchip_clks; clkp < onchip_clks + ARRAY_SIZE(onchip_clks);
      clkp++) {
  if (strcmp(id, (*clkp)->name) == 0
      && try_module_get((*clkp)->owner)) {
   clk = (*clkp);
   break;
  }
 }
 clock_unlock();

 return clk;
}
