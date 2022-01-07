
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int HFC_outb (struct hfc_multi*,int ,unsigned char) ;
 int R_GPIO_OUT1 ;

inline void
cpld_set_reg(struct hfc_multi *hc, unsigned char reg)
{

 HFC_outb(hc, R_GPIO_OUT1, reg);
}
