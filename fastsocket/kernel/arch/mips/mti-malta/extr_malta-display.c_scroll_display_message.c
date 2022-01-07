
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HZ ;
 scalar_t__ display_count ;
 int * display_string ;
 scalar_t__ jiffies ;
 scalar_t__ max_display_count ;
 int mips_display_message (int *) ;
 int mips_scroll_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void scroll_display_message(unsigned long data)
{
 mips_display_message(&display_string[display_count++]);
 if (display_count == max_display_count)
  display_count = 0;

 mod_timer(&mips_scroll_timer, jiffies + HZ);
}
