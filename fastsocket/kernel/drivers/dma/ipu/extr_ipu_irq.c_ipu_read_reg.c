
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu {scalar_t__ reg_ipu; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 ipu_read_reg(struct ipu *ipu, unsigned long reg)
{
 return __raw_readl(ipu->reg_ipu + reg);
}
