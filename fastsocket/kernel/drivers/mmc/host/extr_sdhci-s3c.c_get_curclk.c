
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int S3C_SDHCI_CTRL2_SELBASECLK_MASK ;
 int S3C_SDHCI_CTRL2_SELBASECLK_SHIFT ;

__attribute__((used)) static u32 get_curclk(u32 ctrl2)
{
 ctrl2 &= S3C_SDHCI_CTRL2_SELBASECLK_MASK;
 ctrl2 >>= S3C_SDHCI_CTRL2_SELBASECLK_SHIFT;

 return ctrl2;
}
