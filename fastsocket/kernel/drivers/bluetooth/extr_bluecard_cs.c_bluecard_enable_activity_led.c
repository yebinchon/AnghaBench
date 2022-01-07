
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int timer; int hw_state; TYPE_2__* p_dev; } ;
typedef TYPE_3__ bluecard_info_t ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; } ;


 int CARD_HAS_ACTIVITY_LED ;
 int CARD_HAS_PCCARD_ID ;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bluecard_enable_activity_led(bluecard_info_t *info)
{
 unsigned int iobase = info->p_dev->io.BasePort1;

 if (!test_bit(CARD_HAS_PCCARD_ID, &(info->hw_state)))
  return;

 if (test_bit(CARD_HAS_ACTIVITY_LED, &(info->hw_state))) {

  outb(0x10 | 0x40, iobase + 0x30);


  mod_timer(&(info->timer), jiffies + HZ / 4);
 } else {

  outb(0x08 | 0x20, iobase + 0x30);


  mod_timer(&(info->timer), jiffies + HZ / 2);
 }
}
