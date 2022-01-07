
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct imon_context {int rc_toggle; int release_code; int rdev; scalar_t__ rc_scancode; } ;


 scalar_t__ KEY_RESERVED ;
 scalar_t__ rc_g_keycode_from_table (int ,scalar_t__) ;

__attribute__((used)) static u32 imon_remote_key_lookup(struct imon_context *ictx, u32 scancode)
{
 u32 keycode;
 u32 release;
 bool is_release_code = 0;


 keycode = rc_g_keycode_from_table(ictx->rdev, scancode);
 ictx->rc_toggle = 0x0;
 ictx->rc_scancode = scancode;


 if (keycode == KEY_RESERVED) {
  release = scancode & ~0x4000;
  keycode = rc_g_keycode_from_table(ictx->rdev, release);
  if (keycode != KEY_RESERVED)
   is_release_code = 1;
 }

 ictx->release_code = is_release_code;

 return keycode;
}
