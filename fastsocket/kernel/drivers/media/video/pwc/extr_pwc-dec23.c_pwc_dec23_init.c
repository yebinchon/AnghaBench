
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {struct pwc_dec23_private* decompress_data; } ;
struct pwc_dec23_private {int nbits; int nbitsmask; scalar_t__ scalebits; int table_8004_pass2; int table_0004_pass2; int table_8004_pass1; int table_0004_pass1; } ;


 scalar_t__ DEVICE_USE_CODEC3 (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ** KiaraRomTable ;
 int MAX_OUTER_CROP_VALUE ;
 scalar_t__ SCALEBITS ;
 int ** TimonRomTable ;
 int build_bit_powermask_table (struct pwc_dec23_private*) ;
 int build_subblock_pattern (struct pwc_dec23_private*) ;
 int build_table_color (int ,int ,int ) ;
 int fill_table_dc00_d800 (struct pwc_dec23_private*) ;
 struct pwc_dec23_private* kmalloc (int,int ) ;
 int* pwc_crop_table ;

int pwc_dec23_init(struct pwc_device *pwc, int type, unsigned char *cmd)
{
 int flags, version, shift, i;
 struct pwc_dec23_private *pdec;

 if (pwc->decompress_data == ((void*)0)) {
  pdec = kmalloc(sizeof(struct pwc_dec23_private), GFP_KERNEL);
  if (pdec == ((void*)0))
   return -ENOMEM;
  pwc->decompress_data = pdec;
 }
 pdec = pwc->decompress_data;

 if (DEVICE_USE_CODEC3(type)) {
  flags = cmd[2] & 0x18;
  if (flags == 8)
   pdec->nbits = 7;
  else if (flags == 0x10)
   pdec->nbits = 8;
  else
   pdec->nbits = 6;

  version = cmd[2] >> 5;
  build_table_color(KiaraRomTable[version][0], pdec->table_0004_pass1, pdec->table_8004_pass1);
  build_table_color(KiaraRomTable[version][1], pdec->table_0004_pass2, pdec->table_8004_pass2);

 } else {

  flags = cmd[2] & 6;
  if (flags == 2)
   pdec->nbits = 7;
  else if (flags == 4)
   pdec->nbits = 8;
  else
   pdec->nbits = 6;

  version = cmd[2] >> 3;
  build_table_color(TimonRomTable[version][0], pdec->table_0004_pass1, pdec->table_8004_pass1);
  build_table_color(TimonRomTable[version][1], pdec->table_0004_pass2, pdec->table_8004_pass2);
 }


 shift = 8 - pdec->nbits;
 pdec->scalebits = SCALEBITS - shift;
 pdec->nbitsmask = 0xFF >> shift;

 fill_table_dc00_d800(pdec);
 build_subblock_pattern(pdec);
 build_bit_powermask_table(pdec);
 return 0;
}
