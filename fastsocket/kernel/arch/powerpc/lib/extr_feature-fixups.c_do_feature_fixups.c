
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int alt_end_off; int alt_start_off; int end_off; int start_off; } ;


 int WARN_ON (int) ;
 int calc_addr (struct fixup_entry*,int ) ;
 scalar_t__ patch_feature_section (unsigned long,struct fixup_entry*) ;
 int printk (char*,int ,int ,int ,int ) ;

void do_feature_fixups(unsigned long value, void *fixup_start, void *fixup_end)
{
 struct fixup_entry *fcur, *fend;

 fcur = fixup_start;
 fend = fixup_end;

 for (; fcur < fend; fcur++) {
  if (patch_feature_section(value, fcur)) {
   WARN_ON(1);
   printk("Unable to patch feature section at %p - %p" " with %p - %p\n",

    calc_addr(fcur, fcur->start_off),
    calc_addr(fcur, fcur->end_off),
    calc_addr(fcur, fcur->alt_start_off),
    calc_addr(fcur, fcur->alt_end_off));
  }
 }
}
