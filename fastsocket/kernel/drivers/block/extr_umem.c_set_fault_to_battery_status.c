
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardinfo {TYPE_1__* battery; } ;
struct TYPE_2__ {scalar_t__ good; scalar_t__ warned; } ;


 int LED_FAULT ;
 int LED_FLASH_3_5 ;
 int LED_FLASH_7_0 ;
 int LED_OFF ;
 int LED_ON ;
 int set_led (struct cardinfo*,int ,int ) ;

__attribute__((used)) static void set_fault_to_battery_status(struct cardinfo *card)
{
 if (card->battery[0].good && card->battery[1].good)
  set_led(card, LED_FAULT, LED_OFF);
 else if (card->battery[0].warned || card->battery[1].warned)
  set_led(card, LED_FAULT, LED_ON);
 else if (!card->battery[0].good && !card->battery[1].good)
  set_led(card, LED_FAULT, LED_FLASH_7_0);
 else
  set_led(card, LED_FAULT, LED_FLASH_3_5);
}
