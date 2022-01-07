
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dcb_table {int entries; TYPE_1__* entry; } ;
struct nvbios {int dev; struct dcb_table dcb; } ;
struct TYPE_2__ {int connector; int i2c_index; } ;


 int nv_match_device (int ,int,int,int) ;
 int* olddcb_conntab (int ) ;

__attribute__((used)) static void
dcb_fake_connectors(struct nvbios *bios)
{
 struct dcb_table *dcbt = &bios->dcb;
 u8 map[16] = { };
 int i, idx = 0;






 if (!nv_match_device(bios->dev, 0x0392, 0x107d, 0x20a2)) {
  for (i = 0; i < dcbt->entries; i++) {
   if (dcbt->entry[i].connector)
    return;
  }
 }







 for (i = 0; i < dcbt->entries; i++) {
  u8 i2c = dcbt->entry[i].i2c_index;
  if (i2c == 0x0f) {
   dcbt->entry[i].connector = idx++;
  } else {
   if (!map[i2c])
    map[i2c] = ++idx;
   dcbt->entry[i].connector = map[i2c] - 1;
  }
 }




 if (i > 1) {
  u8 *conntab = olddcb_conntab(bios->dev);
  if (conntab)
   conntab[0] = 0x00;
 }
}
