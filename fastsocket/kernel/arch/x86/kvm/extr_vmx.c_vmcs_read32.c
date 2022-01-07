
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vmcs_readl (unsigned long) ;

__attribute__((used)) static u32 vmcs_read32(unsigned long field)
{
 return vmcs_readl(field);
}
