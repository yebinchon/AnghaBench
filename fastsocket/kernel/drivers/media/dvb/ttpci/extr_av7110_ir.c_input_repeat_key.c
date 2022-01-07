
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infrared {int delay_timer_finished; } ;



__attribute__((used)) static void input_repeat_key(unsigned long parm)
{
 struct infrared *ir = (struct infrared *) parm;

 ir->delay_timer_finished = 1;
}
