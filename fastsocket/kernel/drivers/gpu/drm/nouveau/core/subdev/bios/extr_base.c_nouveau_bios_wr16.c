
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef int u16 ;
struct nouveau_object {int dummy; } ;
struct nouveau_bios {int * data; } ;


 int put_unaligned_le16 (int ,int *) ;

__attribute__((used)) static void
nouveau_bios_wr16(struct nouveau_object *object, u64 addr, u16 data)
{
 struct nouveau_bios *bios = (void *)object;
 put_unaligned_le16(data, &bios->data[addr]);
}
