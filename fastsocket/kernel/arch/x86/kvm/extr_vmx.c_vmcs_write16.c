
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int vmcs_writel (unsigned long,int ) ;

__attribute__((used)) static void vmcs_write16(unsigned long field, u16 value)
{
 vmcs_writel(field, value);
}
