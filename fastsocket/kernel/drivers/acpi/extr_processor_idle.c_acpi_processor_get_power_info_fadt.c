
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* states; } ;
struct acpi_processor {TYPE_2__ power; scalar_t__ pblk; } ;
struct TYPE_6__ {int flags; scalar_t__ C2latency; scalar_t__ C3latency; } ;
struct TYPE_4__ {size_t type; scalar_t__ latency; scalar_t__ address; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FADT_C2_MP_SUPPORTED ;
 scalar_t__ ACPI_PROCESSOR_MAX_C2_LATENCY ;
 scalar_t__ ACPI_PROCESSOR_MAX_C3_LATENCY ;
 size_t ACPI_STATE_C2 ;
 size_t ACPI_STATE_C3 ;
 int EINVAL ;
 int ENODEV ;
 TYPE_3__ acpi_gbl_FADT ;
 int num_online_cpus () ;

__attribute__((used)) static int acpi_processor_get_power_info_fadt(struct acpi_processor *pr)
{

 if (!pr)
  return -EINVAL;

 if (!pr->pblk)
  return -ENODEV;


 pr->power.states[ACPI_STATE_C2].type = ACPI_STATE_C2;
 pr->power.states[ACPI_STATE_C3].type = ACPI_STATE_C3;






 if ((num_online_cpus() > 1) &&
     !(acpi_gbl_FADT.flags & ACPI_FADT_C2_MP_SUPPORTED))
  return -ENODEV;



 pr->power.states[ACPI_STATE_C2].address = pr->pblk + 4;
 pr->power.states[ACPI_STATE_C3].address = pr->pblk + 5;


 pr->power.states[ACPI_STATE_C2].latency = acpi_gbl_FADT.C2latency;
 pr->power.states[ACPI_STATE_C3].latency = acpi_gbl_FADT.C3latency;





 if (acpi_gbl_FADT.C2latency > ACPI_PROCESSOR_MAX_C2_LATENCY) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
   "C2 latency too large [%d]\n", acpi_gbl_FADT.C2latency));

  pr->power.states[ACPI_STATE_C2].address = 0;
 }





 if (acpi_gbl_FADT.C3latency > ACPI_PROCESSOR_MAX_C3_LATENCY) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
   "C3 latency too large [%d]\n", acpi_gbl_FADT.C3latency));

  pr->power.states[ACPI_STATE_C3].address = 0;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "lvl2[0x%08x] lvl3[0x%08x]\n",
     pr->power.states[ACPI_STATE_C2].address,
     pr->power.states[ACPI_STATE_C3].address));

 return 0;
}
