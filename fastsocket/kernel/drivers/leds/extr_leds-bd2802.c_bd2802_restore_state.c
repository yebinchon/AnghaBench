
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bd2802_led {TYPE_1__* led; } ;
struct TYPE_2__ {scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;


 int BLUE ;
 int GREEN ;
 int LED_NUM ;
 int RED ;
 int bd2802_turn_on (struct bd2802_led*,int,int ,scalar_t__) ;

__attribute__((used)) static void bd2802_restore_state(struct bd2802_led *led)
{
 int i;

 for (i = 0; i < LED_NUM; i++) {
  if (led->led[i].r)
   bd2802_turn_on(led, i, RED, led->led[i].r);
  if (led->led[i].g)
   bd2802_turn_on(led, i, GREEN, led->led[i].g);
  if (led->led[i].b)
   bd2802_turn_on(led, i, BLUE, led->led[i].b);
 }
}
