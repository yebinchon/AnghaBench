
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int decr_int; } ;
struct TYPE_5__ {TYPE_1__ fields; } ;
struct TYPE_6__ {TYPE_2__ int_dword; } ;


 int HvCall_MaskIPI ;
 int HvCall_MaskLpEvent ;
 int HvCall_MaskLpProd ;
 int HvCall_MaskTimeout ;
 int HvCall_YieldTimed ;
 int HvCall_setEnabledInterrupts (int) ;
 int HvCall_yieldProcessor (int ,scalar_t__) ;
 TYPE_3__* get_lppaca () ;
 unsigned long get_tb () ;
 int ppc64_runlatch_on () ;
 int process_iSeries_events () ;
 scalar_t__ tb_ticks_per_jiffy ;

__attribute__((used)) static void yield_shared_processor(void)
{
 unsigned long tb;

 HvCall_setEnabledInterrupts(HvCall_MaskIPI |
        HvCall_MaskLpEvent |
        HvCall_MaskLpProd |
        HvCall_MaskTimeout);

 tb = get_tb();

 HvCall_yieldProcessor(HvCall_YieldTimed, tb+tb_ticks_per_jiffy);





 get_lppaca()->int_dword.fields.decr_int = 1;
 ppc64_runlatch_on();
 process_iSeries_events();
}
