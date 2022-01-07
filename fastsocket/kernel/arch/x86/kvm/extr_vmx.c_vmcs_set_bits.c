
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vmcs_readl (unsigned long) ;
 int vmcs_writel (unsigned long,int) ;

__attribute__((used)) static void vmcs_set_bits(unsigned long field, u32 mask)
{
 vmcs_writel(field, vmcs_readl(field) | mask);
}
