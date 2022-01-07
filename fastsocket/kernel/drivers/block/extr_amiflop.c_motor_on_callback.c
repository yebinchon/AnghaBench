
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pra; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int DSKRDY ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 TYPE_2__ ciaa ;
 int complete_all (int *) ;
 scalar_t__ jiffies ;
 int motor_on_completion ;
 TYPE_1__ motor_on_timer ;
 scalar_t__ on_attempts ;

__attribute__((used)) static void motor_on_callback(unsigned long nr)
{
 if (!(ciaa.pra & DSKRDY) || --on_attempts == 0) {
  complete_all(&motor_on_completion);
 } else {
  motor_on_timer.expires = jiffies + HZ/10;
  add_timer(&motor_on_timer);
 }
}
