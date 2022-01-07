
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ BCMCPU_IS_6358 () ;
 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 struct clk clk_enet0 ;
 struct clk clk_enet1 ;
 struct clk clk_ephy ;
 struct clk clk_pcm ;
 struct clk clk_periph ;
 struct clk clk_spi ;
 struct clk clk_usbh ;
 int strcmp (char const*,char*) ;

struct clk *clk_get(struct device *dev, const char *id)
{
 if (!strcmp(id, "enet0"))
  return &clk_enet0;
 if (!strcmp(id, "enet1"))
  return &clk_enet1;
 if (!strcmp(id, "ephy"))
  return &clk_ephy;
 if (!strcmp(id, "usbh"))
  return &clk_usbh;
 if (!strcmp(id, "spi"))
  return &clk_spi;
 if (!strcmp(id, "periph"))
  return &clk_periph;
 if (BCMCPU_IS_6358() && !strcmp(id, "pcm"))
  return &clk_pcm;
 return ERR_PTR(-ENOENT);
}
