
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int index; } ;


 int MSR_K6_EPMR ;
 scalar_t__ POWERNOW_IOPORT ;
 TYPE_1__* clock_ratio ;
 int inl (scalar_t__) ;
 int wrmsr (int ,scalar_t__,int ) ;

__attribute__((used)) static int powernow_k6_get_cpu_multiplier(void)
{
 u64 invalue = 0;
 u32 msrval;

 msrval = POWERNOW_IOPORT + 0x1;
 wrmsr(MSR_K6_EPMR, msrval, 0);
 invalue = inl(POWERNOW_IOPORT + 0x8);
 msrval = POWERNOW_IOPORT + 0x0;
 wrmsr(MSR_K6_EPMR, msrval, 0);

 return clock_ratio[(invalue >> 5)&7].index;
}
