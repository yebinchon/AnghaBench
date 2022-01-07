
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_6__ {int hw_state; TYPE_2__* p_dev; } ;
typedef TYPE_3__ bluecard_info_t ;
struct TYPE_4__ {unsigned int BasePort1; } ;
struct TYPE_5__ {TYPE_1__ io; } ;


 int CARD_HAS_ACTIVITY_LED ;
 int CARD_HAS_PCCARD_ID ;
 int outb (int,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bluecard_activity_led_timeout(u_long arg)
{
 bluecard_info_t *info = (bluecard_info_t *)arg;
 unsigned int iobase = info->p_dev->io.BasePort1;

 if (!test_bit(CARD_HAS_PCCARD_ID, &(info->hw_state)))
  return;

 if (test_bit(CARD_HAS_ACTIVITY_LED, &(info->hw_state))) {

  outb(0x08 | 0x20, iobase + 0x30);
 } else {

  outb(0x00, iobase + 0x30);
 }
}
