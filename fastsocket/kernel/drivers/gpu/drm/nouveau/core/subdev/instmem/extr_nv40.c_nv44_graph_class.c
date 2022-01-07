
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_instmem_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 TYPE_1__* nv_device (struct nv04_instmem_priv*) ;

__attribute__((used)) static inline int
nv44_graph_class(struct nv04_instmem_priv *priv)
{
 if ((nv_device(priv)->chipset & 0xf0) == 0x60)
  return 1;
 return !(0x0baf & (1 << (nv_device(priv)->chipset & 0x0f)));
}
