
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GAFR ;
 int GPDR ;
 int GPIO_32_768kHz ;
 int TUCR ;
 int TUCR_3_6864MHz ;

__attribute__((used)) static void clk_gpio27_enable(void)
{




 GAFR |= GPIO_32_768kHz;
 GPDR |= GPIO_32_768kHz;
 TUCR = TUCR_3_6864MHz;
}
