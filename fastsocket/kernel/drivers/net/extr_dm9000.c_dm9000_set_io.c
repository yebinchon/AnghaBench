
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int inblk; int outblk; int dumpblk; int dev; } ;


 int dev_dbg (int ,char*) ;
 int dm9000_dumpblk_16bit ;
 int dm9000_dumpblk_32bit ;
 int dm9000_dumpblk_8bit ;
 int dm9000_inblk_16bit ;
 int dm9000_inblk_32bit ;
 int dm9000_inblk_8bit ;
 int dm9000_outblk_16bit ;
 int dm9000_outblk_32bit ;
 int dm9000_outblk_8bit ;

__attribute__((used)) static void dm9000_set_io(struct board_info *db, int byte_width)
{




 switch (byte_width) {
 case 1:
  db->dumpblk = dm9000_dumpblk_8bit;
  db->outblk = dm9000_outblk_8bit;
  db->inblk = dm9000_inblk_8bit;
  break;


 case 3:
  dev_dbg(db->dev, ": 3 byte IO, falling back to 16bit\n");
 case 2:
  db->dumpblk = dm9000_dumpblk_16bit;
  db->outblk = dm9000_outblk_16bit;
  db->inblk = dm9000_inblk_16bit;
  break;

 case 4:
 default:
  db->dumpblk = dm9000_dumpblk_32bit;
  db->outblk = dm9000_outblk_32bit;
  db->inblk = dm9000_inblk_32bit;
  break;
 }
}
