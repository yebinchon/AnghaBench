
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int hw_code; int keycode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int KEY_RESERVED ;
 TYPE_1__* imon_panel_key_table ;

__attribute__((used)) static u32 imon_panel_key_lookup(u64 code)
{
 int i;
 u32 keycode = KEY_RESERVED;

 for (i = 0; i < ARRAY_SIZE(imon_panel_key_table); i++) {
  if (imon_panel_key_table[i].hw_code == (code | 0xffee)) {
   keycode = imon_panel_key_table[i].keycode;
   break;
  }
 }

 return keycode;
}
