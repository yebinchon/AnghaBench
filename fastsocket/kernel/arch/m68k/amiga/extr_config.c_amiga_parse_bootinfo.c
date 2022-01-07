
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long start; int end; } ;
struct zorro_dev {TYPE_1__ resource; int slotsize; int slotaddr; int rom; } ;
struct bi_record {unsigned long* data; int tag; } ;
struct ConfigDev {unsigned long cd_BoardSize; scalar_t__ cd_BoardAddr; int cd_SlotSize; int cd_SlotAddr; int cd_Rom; } ;
 int ZORRO_NUM_AUTO ;
 int amiga_chip_size ;
 unsigned long amiga_chipset ;
 unsigned long amiga_eclock ;
 unsigned long amiga_model ;
 unsigned char amiga_psfreq ;
 unsigned char amiga_vblank ;
 int printk (char*) ;
 struct zorro_dev* zorro_autocon ;
 int zorro_num_autocon ;

int amiga_parse_bootinfo(const struct bi_record *record)
{
 int unknown = 0;
 const unsigned long *data = record->data;

 switch (record->tag) {
 case 131:
  amiga_model = *data;
  break;

 case 132:
  amiga_eclock = *data;
  break;

 case 134:
  amiga_chipset = *data;
  break;

 case 133:
  amiga_chip_size = *(const int *)data;
  break;

 case 128:
  amiga_vblank = *(const unsigned char *)data;
  break;

 case 130:
  amiga_psfreq = *(const unsigned char *)data;
  break;

 case 135:
  break;

 case 129:

  break;

 default:
  unknown = 1;
 }
 return unknown;
}
