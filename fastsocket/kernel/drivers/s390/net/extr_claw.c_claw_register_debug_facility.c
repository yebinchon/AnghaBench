
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int * claw_dbf_setup ;
 int * claw_dbf_trace ;
 int claw_unregister_debug_facility () ;
 int debug_hex_ascii_view ;
 int * debug_register (char*,int,int,int) ;
 int debug_register_view (int *,int *) ;
 int debug_set_level (int *,int) ;

__attribute__((used)) static int
claw_register_debug_facility(void)
{
 claw_dbf_setup = debug_register("claw_setup", 2, 1, 8);
 claw_dbf_trace = debug_register("claw_trace", 2, 2, 8);
 if (claw_dbf_setup == ((void*)0) || claw_dbf_trace == ((void*)0)) {
  claw_unregister_debug_facility();
  return -ENOMEM;
 }
 debug_register_view(claw_dbf_setup, &debug_hex_ascii_view);
 debug_set_level(claw_dbf_setup, 2);
 debug_register_view(claw_dbf_trace, &debug_hex_ascii_view);
 debug_set_level(claw_dbf_trace, 2);
 return 0;
}
