
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mobile_ceu_dev {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ceu_write(struct sh_mobile_ceu_dev *priv,
        unsigned long reg_offs, u32 data)
{
 iowrite32(data, priv->base + reg_offs);
}
