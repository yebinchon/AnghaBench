
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dev; } ;


 int drv ;
 int netif_err (struct rtl8169_private*,int ,int ,char*,int) ;

__attribute__((used)) static bool rtl_ocp_reg_failure(struct rtl8169_private *tp, u32 reg)
{
 if (reg & 0xffff0001) {
  netif_err(tp, drv, tp->dev, "Invalid ocp reg %x!\n", reg);
  return 1;
 }
 return 0;
}
