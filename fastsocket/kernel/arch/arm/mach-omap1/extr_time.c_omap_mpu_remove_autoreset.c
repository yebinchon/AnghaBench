
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cntl; } ;
typedef TYPE_1__ omap_mpu_timer_regs_t ;


 int MPU_TIMER_AR ;
 TYPE_1__* omap_mpu_timer_base (int) ;

__attribute__((used)) static inline void omap_mpu_remove_autoreset(int nr)
{
 volatile omap_mpu_timer_regs_t* timer = omap_mpu_timer_base(nr);

 timer->cntl = timer->cntl & ~MPU_TIMER_AR;
}
