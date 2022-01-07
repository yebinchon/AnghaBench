
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_map {int scd_index; } ;
struct idt77252_dev {int scd_size; unsigned long scd_base; struct vc_map** scd2vc; } ;


 int SAR_SRAM_SCD_SIZE ;

__attribute__((used)) static unsigned long
get_free_scd(struct idt77252_dev *card, struct vc_map *vc)
{
 int i;

 for (i = 0; i < card->scd_size; i++) {
  if (!card->scd2vc[i]) {
   card->scd2vc[i] = vc;
   vc->scd_index = i;
   return card->scd_base + i * SAR_SRAM_SCD_SIZE;
  }
 }
 return 0;
}
