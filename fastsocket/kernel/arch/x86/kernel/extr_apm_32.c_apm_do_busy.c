
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ALWAYS_CALL_BUSY ;
 int APM_FUNC_BUSY ;
 int apm_bios_call_simple (int ,int ,int ,int *,int*) ;
 scalar_t__ clock_slowed ;

__attribute__((used)) static void apm_do_busy(void)
{
 u32 dummy;
 int err;

 if (clock_slowed || ALWAYS_CALL_BUSY) {
  (void)apm_bios_call_simple(APM_FUNC_BUSY, 0, 0, &dummy, &err);
  clock_slowed = 0;
 }
}
