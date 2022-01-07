
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int chipset; } ;


 struct nouveau_device* nv_device (void*) ;

__attribute__((used)) static inline int
nv44_graph_class(void *priv)
{
 struct nouveau_device *device = nv_device(priv);

 if ((device->chipset & 0xf0) == 0x60)
  return 1;

 return !(0x0baf & (1 << (device->chipset & 0x0f)));
}
