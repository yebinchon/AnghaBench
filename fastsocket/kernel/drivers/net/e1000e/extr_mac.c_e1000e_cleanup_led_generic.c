
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ledctl_default; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int LEDCTL ;
 int ew32 (int ,int ) ;

s32 e1000e_cleanup_led_generic(struct e1000_hw *hw)
{
 ew32(LEDCTL, hw->mac.ledctl_default);
 return 0;
}
