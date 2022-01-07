
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct nvbios {int major_version; int* data; int init_script_tbls_ptr; } ;


 int ROM16 (int) ;

__attribute__((used)) static uint16_t clkcmptable(struct nvbios *bios, uint16_t clktable, int pxclk)
{
 int compare_record_len, i = 0;
 uint16_t compareclk, scriptptr = 0;

 if (bios->major_version < 5)
  compare_record_len = 3;
 else
  compare_record_len = 4;

 do {
  compareclk = ROM16(bios->data[clktable + compare_record_len * i]);
  if (pxclk >= compareclk * 10) {
   if (bios->major_version < 5) {
    uint8_t tmdssub = bios->data[clktable + 2 + compare_record_len * i];
    scriptptr = ROM16(bios->data[bios->init_script_tbls_ptr + tmdssub * 2]);
   } else
    scriptptr = ROM16(bios->data[clktable + 2 + compare_record_len * i]);
   break;
  }
  i++;
 } while (compareclk);

 return scriptptr;
}
