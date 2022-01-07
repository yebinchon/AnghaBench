
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int HFC_outb (struct hfc_multi*,int ,unsigned char) ;
 int R_GPIO_OUT1 ;
 int cpld_set_reg (struct hfc_multi*,unsigned char) ;
 int disablepcibridge (struct hfc_multi*) ;
 int enablepcibridge (struct hfc_multi*) ;
 unsigned char readpcibridge (struct hfc_multi*,int) ;

inline unsigned char
cpld_read_reg(struct hfc_multi *hc, unsigned char reg)
{
 unsigned char bytein;

 cpld_set_reg(hc, reg);


 HFC_outb(hc, R_GPIO_OUT1, reg);

 enablepcibridge(hc);
 bytein = readpcibridge(hc, 1);
 disablepcibridge(hc);

 return bytein;
}
