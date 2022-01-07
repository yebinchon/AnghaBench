
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int vmcs_readl (unsigned long) ;

__attribute__((used)) static u16 vmcs_read16(unsigned long field)
{
 return vmcs_readl(field);
}
