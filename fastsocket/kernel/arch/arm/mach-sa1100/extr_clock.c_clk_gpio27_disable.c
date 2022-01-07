
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GAFR ;
 int GPDR ;
 int GPIO_32_768kHz ;
 scalar_t__ TUCR ;

__attribute__((used)) static void clk_gpio27_disable(void)
{
 TUCR = 0;
 GPDR &= ~GPIO_32_768kHz;
 GAFR &= ~GPIO_32_768kHz;
}
