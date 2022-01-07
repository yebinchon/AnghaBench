
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_device {int chipset; } ;


 struct nouveau_device* nv_device (void*) ;

__attribute__((used)) static inline u32
nvc0_graph_class(void *obj)
{
 struct nouveau_device *device = nv_device(obj);

 switch (device->chipset) {
 case 0xc0:
 case 0xc3:
 case 0xc4:
 case 0xce:
 case 0xcf:
  return 0x9097;
 case 0xc1:
  return 0x9197;
 case 0xc8:
 case 0xd9:
  return 0x9297;
 case 0xe4:
 case 0xe7:
 case 0xe6:
  return 0xa097;
 default:
  return 0;
 }
}
