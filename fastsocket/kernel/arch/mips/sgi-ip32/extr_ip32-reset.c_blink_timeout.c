
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long misc; } ;
struct TYPE_5__ {TYPE_1__ ctrl; } ;
struct TYPE_6__ {TYPE_2__ perif; } ;


 unsigned long MACEISA_LED_RED ;
 int blink_timer ;
 scalar_t__ jiffies ;
 TYPE_3__* mace ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void blink_timeout(unsigned long data)
{
 unsigned long led = mace->perif.ctrl.misc ^ MACEISA_LED_RED;
 mace->perif.ctrl.misc = led;
 mod_timer(&blink_timer, jiffies + data);
}
