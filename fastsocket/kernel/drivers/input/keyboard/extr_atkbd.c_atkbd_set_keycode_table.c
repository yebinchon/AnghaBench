
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atkbd {int set; int force_release_mask; void** keycode; scalar_t__ scroll; scalar_t__ translated; } ;
struct TYPE_3__ {unsigned int set2; void* keycode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ATKBD_KEYMAP_SIZE ;
 int ATKBD_RET_HANGEUL ;
 int ATKBD_RET_HANJA ;
 void* KEY_HANGEUL ;
 void* KEY_HANJA ;
 int __set_bit (unsigned int,int ) ;
 unsigned int atkbd_compat_scancode (struct atkbd*,int ) ;
 int atkbd_platform_fixup (struct atkbd*,int ) ;
 int atkbd_platform_fixup_data ;
 TYPE_1__* atkbd_scroll_keys ;
 void** atkbd_set2_keycode ;
 void** atkbd_set3_keycode ;
 unsigned int* atkbd_unxlate_table ;
 int bitmap_zero (int ,int ) ;
 int memcpy (void**,void**,int) ;
 int memset (void**,int ,int) ;

__attribute__((used)) static void atkbd_set_keycode_table(struct atkbd *atkbd)
{
 unsigned int scancode;
 int i, j;

 memset(atkbd->keycode, 0, sizeof(atkbd->keycode));
 bitmap_zero(atkbd->force_release_mask, ATKBD_KEYMAP_SIZE);

 if (atkbd->translated) {
  for (i = 0; i < 128; i++) {
   scancode = atkbd_unxlate_table[i];
   atkbd->keycode[i] = atkbd_set2_keycode[scancode];
   atkbd->keycode[i | 0x80] = atkbd_set2_keycode[scancode | 0x80];
   if (atkbd->scroll)
    for (j = 0; j < ARRAY_SIZE(atkbd_scroll_keys); j++)
     if ((scancode | 0x80) == atkbd_scroll_keys[j].set2)
      atkbd->keycode[i | 0x80] = atkbd_scroll_keys[j].keycode;
  }
 } else if (atkbd->set == 3) {
  memcpy(atkbd->keycode, atkbd_set3_keycode, sizeof(atkbd->keycode));
 } else {
  memcpy(atkbd->keycode, atkbd_set2_keycode, sizeof(atkbd->keycode));

  if (atkbd->scroll)
   for (i = 0; i < ARRAY_SIZE(atkbd_scroll_keys); i++) {
    scancode = atkbd_scroll_keys[i].set2;
    atkbd->keycode[scancode] = atkbd_scroll_keys[i].keycode;
  }
 }





 scancode = atkbd_compat_scancode(atkbd, ATKBD_RET_HANGEUL);
 atkbd->keycode[scancode] = KEY_HANGEUL;
 __set_bit(scancode, atkbd->force_release_mask);

 scancode = atkbd_compat_scancode(atkbd, ATKBD_RET_HANJA);
 atkbd->keycode[scancode] = KEY_HANJA;
 __set_bit(scancode, atkbd->force_release_mask);




 if (atkbd_platform_fixup)
  atkbd_platform_fixup(atkbd, atkbd_platform_fixup_data);
}
