
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int base; } ;



 int device_id ;
 int manuf_id ;
 int version_id ;
 int writew (int ,int ) ;

__attribute__((used)) static void onenand_bootram_handle(struct onenand_chip *this, int cmd)
{
 switch (cmd) {
 case 128:
  writew(manuf_id, this->base);
  writew(device_id, this->base + 2);
  writew(version_id, this->base + 4);
  break;

 default:

  break;
 }
}
