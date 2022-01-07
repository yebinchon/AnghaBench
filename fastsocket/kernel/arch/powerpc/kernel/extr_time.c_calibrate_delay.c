
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loops_per_jiffy ;
 int tb_ticks_per_jiffy ;

void calibrate_delay(void)
{



 loops_per_jiffy = tb_ticks_per_jiffy;
}
