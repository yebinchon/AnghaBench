
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ claw_dbf_setup ;
 scalar_t__ claw_dbf_trace ;
 int debug_unregister (scalar_t__) ;

__attribute__((used)) static void
claw_unregister_debug_facility(void)
{
 if (claw_dbf_setup)
  debug_unregister(claw_dbf_setup);
 if (claw_dbf_trace)
  debug_unregister(claw_dbf_trace);
}
