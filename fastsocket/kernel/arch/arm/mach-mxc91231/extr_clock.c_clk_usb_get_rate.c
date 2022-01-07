
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long CRM_SMALL_DIVIDER (int ,int ) ;
 int MXC_CRMAP_ACDER2 ;
 int USBDIV ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_usb_get_rate(struct clk *clk)
{
 return clk_get_rate(clk->parent) /
  CRM_SMALL_DIVIDER(MXC_CRMAP_ACDER2, USBDIV);
}
