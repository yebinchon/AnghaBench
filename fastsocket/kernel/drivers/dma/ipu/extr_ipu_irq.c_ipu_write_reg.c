
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu {scalar_t__ reg_ipu; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void ipu_write_reg(struct ipu *ipu, u32 value, unsigned long reg)
{
 __raw_writel(value, ipu->reg_ipu + reg);
}
