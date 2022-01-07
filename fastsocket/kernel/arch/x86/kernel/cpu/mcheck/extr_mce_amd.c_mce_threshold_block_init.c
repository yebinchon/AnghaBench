
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_block {int threshold_limit; } ;
struct thresh_restart {int set_lvt_off; int lvt_off; struct threshold_block* b; } ;


 int THRESHOLD_MAX ;
 int threshold_restart_bank (struct thresh_restart*) ;

__attribute__((used)) static void mce_threshold_block_init(struct threshold_block *b, int offset)
{
 struct thresh_restart tr = {
  .b = b,
  .set_lvt_off = 1,
  .lvt_off = offset,
 };

 b->threshold_limit = THRESHOLD_MAX;
 threshold_restart_bank(&tr);
}
