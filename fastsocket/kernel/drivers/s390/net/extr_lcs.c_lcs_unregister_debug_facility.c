
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_unregister (scalar_t__) ;
 scalar_t__ lcs_dbf_setup ;
 scalar_t__ lcs_dbf_trace ;

__attribute__((used)) static void
lcs_unregister_debug_facility(void)
{
 if (lcs_dbf_setup)
  debug_unregister(lcs_dbf_setup);
 if (lcs_dbf_trace)
  debug_unregister(lcs_dbf_trace);
}
