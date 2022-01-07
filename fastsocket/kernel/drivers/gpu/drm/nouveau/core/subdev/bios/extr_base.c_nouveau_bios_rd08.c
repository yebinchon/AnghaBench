
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u64 ;
struct nouveau_object {int dummy; } ;
struct nouveau_bios {int * data; } ;



__attribute__((used)) static u8
nouveau_bios_rd08(struct nouveau_object *object, u64 addr)
{
 struct nouveau_bios *bios = (void *)object;
 return bios->data[addr];
}
