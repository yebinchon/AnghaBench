
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int id; int parent; } ;


 int BAUDDIV ;
 int BUG () ;
 unsigned long CRM_SMALL_DIVIDER (int ,int ) ;
 int MXC_CRMAP_ACDER2 ;
 int MXC_CRMAP_APRA ;
 int UART3DIV ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long clk_uart_get_rate(struct clk *clk)
{
 u32 div;

 switch (clk->id) {
 case 0:
 case 1:
  div = CRM_SMALL_DIVIDER(MXC_CRMAP_ACDER2, BAUDDIV);
  break;
 case 2:
  div = CRM_SMALL_DIVIDER(MXC_CRMAP_APRA, UART3DIV);
  break;
 default:
  BUG();
 }
 return clk_get_rate(clk->parent) / div;
}
