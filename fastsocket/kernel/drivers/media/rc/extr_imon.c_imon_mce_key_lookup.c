
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imon_context {int rc_scancode; int release_code; int rdev; } ;


 int MCE_KEY_MASK ;
 int MCE_TOGGLE_BIT ;
 int rc_g_keycode_from_table (int ,int) ;

__attribute__((used)) static u32 imon_mce_key_lookup(struct imon_context *ictx, u32 scancode)
{
 u32 keycode;
 if (scancode & 0x80000000)
  scancode = scancode | 0x7000 | 0x8000;

 ictx->rc_scancode = scancode;
 keycode = rc_g_keycode_from_table(ictx->rdev, scancode);


 ictx->release_code = 0;

 return keycode;
}
