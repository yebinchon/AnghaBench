
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long read_tim; } ;
typedef TYPE_1__ omap_mpu_timer_regs_t ;


 TYPE_1__* omap_mpu_timer_base (int) ;

__attribute__((used)) static inline unsigned long omap_mpu_timer_read(int nr)
{
 volatile omap_mpu_timer_regs_t* timer = omap_mpu_timer_base(nr);
 return timer->read_tim;
}
