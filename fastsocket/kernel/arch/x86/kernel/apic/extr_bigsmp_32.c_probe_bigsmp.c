
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bigsmp_dmi_table ;
 scalar_t__ def_to_bigsmp ;
 int dmi_bigsmp ;
 int dmi_check_system (int ) ;

__attribute__((used)) static int probe_bigsmp(void)
{
 if (def_to_bigsmp)
  dmi_bigsmp = 1;
 else
  dmi_check_system(bigsmp_dmi_table);

 return dmi_bigsmp;
}
