
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int chip_id; int chip_rev; } ;


 int B43_NPHY_TABLE_ADDR ;
 int B43_NPHY_TABLE_DATAHI ;
 int B43_NPHY_TABLE_DATALO ;



 int B43_NTAB_TYPEMASK ;
 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

void b43_ntab_write_bulk(struct b43_wldev *dev, u32 offset,
     unsigned int nr_elements, const void *_data)
{
 u32 type, value;
 const u8 *data = _data;
 unsigned int i;

 type = offset & B43_NTAB_TYPEMASK;
 offset &= ~B43_NTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset);

 for (i = 0; i < nr_elements; i++) {

  if ((offset >> 10) == 9 && dev->dev->chip_id == 43224 &&
      dev->dev->chip_rev == 1) {
   b43_phy_read(dev, B43_NPHY_TABLE_DATALO);
   b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset + i);
  }

  switch (type) {
  case 128:
   value = *data;
   data++;
   B43_WARN_ON(value & ~0xFF);
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO, value);
   break;
  case 130:
   value = *((u16 *)data);
   data += 2;
   B43_WARN_ON(value & ~0xFFFF);
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO, value);
   break;
  case 129:
   value = *((u32 *)data);
   data += 4;
   b43_phy_write(dev, B43_NPHY_TABLE_DATAHI, value >> 16);
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO,
     value & 0xFFFF);
   break;
  default:
   B43_WARN_ON(1);
  }
 }
}
