
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kbd_struct {scalar_t__ ledmode; unsigned char ledflagstate; } ;
struct TYPE_2__ {int* addr; int mask; scalar_t__ valid; } ;


 scalar_t__ LED_SHOW_IOCTL ;
 scalar_t__ LED_SHOW_MEM ;
 int fg_console ;
 struct kbd_struct* kbd_table ;
 unsigned char ledioctl ;
 TYPE_1__* ledptrs ;

__attribute__((used)) static inline unsigned char getleds(void)
{
 struct kbd_struct *kbd = kbd_table + fg_console;
 unsigned char leds;
 int i;

 if (kbd->ledmode == LED_SHOW_IOCTL)
  return ledioctl;

 leds = kbd->ledflagstate;

 if (kbd->ledmode == LED_SHOW_MEM) {
  for (i = 0; i < 3; i++)
   if (ledptrs[i].valid) {
    if (*ledptrs[i].addr & ledptrs[i].mask)
     leds |= (1 << i);
    else
     leds &= ~(1 << i);
   }
 }
 return leds;
}
