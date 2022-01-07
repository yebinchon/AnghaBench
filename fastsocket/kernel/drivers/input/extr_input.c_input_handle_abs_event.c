
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_slot {int* abs; } ;
struct input_dev {int mtsize; int slot; int* abs; int * absfuzz; struct input_mt_slot* mt; } ;


 unsigned int ABS_MT_FIRST ;
 unsigned int ABS_MT_LAST ;
 unsigned int ABS_MT_SLOT ;
 int EV_ABS ;
 int INPUT_IGNORE_EVENT ;
 int INPUT_PASS_TO_HANDLERS ;
 int input_defuzz_abs_event (int,int,int ) ;
 int input_pass_event (struct input_dev*,int ,unsigned int,int) ;

__attribute__((used)) static int input_handle_abs_event(struct input_dev *dev,
      unsigned int code, int *pval)
{
 bool is_mt_event;
 int *pold;

 if (code == ABS_MT_SLOT) {




  if (*pval >= 0 && *pval < dev->mtsize)
   dev->slot = *pval;

  return INPUT_IGNORE_EVENT;
 }

 is_mt_event = code >= ABS_MT_FIRST && code <= ABS_MT_LAST;

 if (!is_mt_event) {
  pold = &dev->abs[code];
 } else if (dev->mt) {
  struct input_mt_slot *mtslot = &dev->mt[dev->slot];
  pold = &mtslot->abs[code - ABS_MT_FIRST];
 } else {




  pold = ((void*)0);
 }

 if (pold) {
  *pval = input_defuzz_abs_event(*pval, *pold,
      dev->absfuzz[code]);
  if (*pold == *pval)
   return INPUT_IGNORE_EVENT;

  *pold = *pval;
 }


 if (is_mt_event && dev->slot != dev->abs[ABS_MT_SLOT]) {
  dev->abs[ABS_MT_SLOT] = dev->slot;
  input_pass_event(dev, EV_ABS, ABS_MT_SLOT, dev->slot);
 }

 return INPUT_PASS_TO_HANDLERS;
}
