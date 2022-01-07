
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kled_led_wk ;
 int set_kled_lvl (int ) ;

__attribute__((used)) static void kled_led_update(struct work_struct *ignored)
{
 set_kled_lvl(kled_led_wk);
}
