
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int MXC_CCM_PDR1_USB_PODF_MASK ;
 int MXC_CCM_PDR1_USB_PODF_OFFSET ;
 int MXC_CCM_PDR1_USB_PRDF_MASK ;
 int MXC_CCM_PDR1_USB_PRDF_OFFSET ;
 unsigned long PDR1 (int ,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long usb_get_rate(struct clk *clk)
{
 unsigned long usb_pdf, usb_prepdf;

 usb_pdf = PDR1(MXC_CCM_PDR1_USB_PODF_MASK,
         MXC_CCM_PDR1_USB_PODF_OFFSET);
 usb_prepdf = PDR1(MXC_CCM_PDR1_USB_PRDF_MASK,
     MXC_CCM_PDR1_USB_PRDF_OFFSET);
 return clk_get_rate(clk->parent) / (usb_prepdf + 1) / (usb_pdf + 1);
}
