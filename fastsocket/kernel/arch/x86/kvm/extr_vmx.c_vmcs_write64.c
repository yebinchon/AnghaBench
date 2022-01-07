
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int vmcs_writel (unsigned long,int) ;

__attribute__((used)) static void vmcs_write64(unsigned long field, u64 value)
{
 vmcs_writel(field, value);

 asm volatile ("");
 vmcs_writel(field+1, value >> 32);

}
