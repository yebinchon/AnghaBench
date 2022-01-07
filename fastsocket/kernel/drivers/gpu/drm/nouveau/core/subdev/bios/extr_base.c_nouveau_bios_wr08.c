
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u64 ;
struct nouveau_object {int dummy; } ;
struct nouveau_bios {int * data; } ;



__attribute__((used)) static void
nouveau_bios_wr08(struct nouveau_object *object, u64 addr, u8 data)
{
 struct nouveau_bios *bios = (void *)object;
 bios->data[addr] = data;
}
