
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

void b43_ntab_read_bulk(struct b43_wldev *dev, u32 offset,
    unsigned int nr_elements, void *_data)
{
 u32 type;
 u8 *data = _data;
 unsigned int i;

 type = offset & B43_NTAB_TYPEMASK;
 offset &= ~B43_NTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset);

 for (i = 0; i < nr_elements; i++) {

  if (dev->dev->chip_id == 43224 && dev->dev->chip_rev == 1) {
   b43_phy_read(dev, B43_NPHY_TABLE_DATALO);
   b43_phy_write(dev, B43_NPHY_TABLE_ADDR, offset + i);
  }

  switch (type) {
  case 128:
   *data = b43_phy_read(dev, B43_NPHY_TABLE_DATALO) & 0xFF;
   data++;
   break;
  case 130:
   *((u16 *)data) = b43_phy_read(dev, B43_NPHY_TABLE_DATALO);
   data += 2;
   break;
  case 129:
   *((u32 *)data) =
    b43_phy_read(dev, B43_NPHY_TABLE_DATALO);
   *((u32 *)data) |=
    b43_phy_read(dev, B43_NPHY_TABLE_DATAHI) << 16;
   data += 4;
   break;
  default:
   B43_WARN_ON(1);
  }
 }
}
