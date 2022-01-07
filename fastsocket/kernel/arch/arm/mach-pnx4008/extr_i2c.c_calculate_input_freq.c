
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;


 int HCLK_MHZ ;

__attribute__((used)) static u32 calculate_input_freq(struct platform_device *pdev)
{
 return HCLK_MHZ;
}
