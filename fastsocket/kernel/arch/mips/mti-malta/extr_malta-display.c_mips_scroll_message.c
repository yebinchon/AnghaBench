
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer_sync (int *) ;
 int display_string ;
 scalar_t__ jiffies ;
 scalar_t__ max_display_count ;
 int mips_scroll_timer ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ strlen (int ) ;

void mips_scroll_message(void)
{
 del_timer_sync(&mips_scroll_timer);
 max_display_count = strlen(display_string) + 1 - 8;
 mod_timer(&mips_scroll_timer, jiffies + 1);
}
