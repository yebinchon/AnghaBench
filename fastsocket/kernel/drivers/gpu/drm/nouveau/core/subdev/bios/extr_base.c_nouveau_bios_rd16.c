
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef int u16 ;
struct nouveau_object {int dummy; } ;
struct nouveau_bios {int * data; } ;


 int get_unaligned_le16 (int *) ;

__attribute__((used)) static u16
nouveau_bios_rd16(struct nouveau_object *object, u64 addr)
{
 struct nouveau_bios *bios = (void *)object;
 return get_unaligned_le16(&bios->data[addr]);
}
