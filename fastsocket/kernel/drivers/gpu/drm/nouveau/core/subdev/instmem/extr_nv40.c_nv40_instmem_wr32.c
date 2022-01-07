
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nv04_instmem_priv {scalar_t__ iomem; } ;
struct nouveau_object {int dummy; } ;


 int iowrite32_native (int ,scalar_t__) ;

__attribute__((used)) static void
nv40_instmem_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 struct nv04_instmem_priv *priv = (void *)object;
 iowrite32_native(data, priv->iomem + addr);
}
