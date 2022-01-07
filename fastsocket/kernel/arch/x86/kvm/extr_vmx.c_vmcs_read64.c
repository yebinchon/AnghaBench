
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int vmcs_readl (unsigned long) ;

__attribute__((used)) static u64 vmcs_read64(unsigned long field)
{



 return vmcs_readl(field) | ((u64)vmcs_readl(field+1) << 32);

}
