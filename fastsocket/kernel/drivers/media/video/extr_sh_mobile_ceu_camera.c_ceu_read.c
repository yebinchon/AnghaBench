
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mobile_ceu_dev {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 ceu_read(struct sh_mobile_ceu_dev *priv, unsigned long reg_offs)
{
 return ioread32(priv->base + reg_offs);
}
