
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mark_tsc_unstable (char*) ;
 int setup_summit () ;
 int strncmp (char*,char*,int) ;
 int use_cyclone ;

__attribute__((used)) static int summit_acpi_madt_oem_check(char *oem_id, char *oem_table_id)
{
 if (!strncmp(oem_id, "IBM", 3) &&
     (!strncmp(oem_table_id, "SERVIGIL", 8)
      || !strncmp(oem_table_id, "EXA", 3))){
  mark_tsc_unstable("Summit based system");
  use_cyclone = 1;
  setup_summit();
  return 1;
 }
 return 0;
}
