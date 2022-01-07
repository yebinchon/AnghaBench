
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_processor_cx {int valid; int latency; int latency_ticks; int address; } ;
struct TYPE_7__ {int bm_check; int bm_control; int has_cst; } ;
struct acpi_processor {TYPE_3__ flags; int id; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_5__ {scalar_t__ fdma; } ;
struct TYPE_6__ {TYPE_1__ piix4; } ;


 int ACPI_BITREG_BUS_MASTER_RLD ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FADT_WBINVD ;
 TYPE_4__ acpi_gbl_FADT ;
 int acpi_processor_power_init_bm_check (TYPE_3__*,int ) ;
 int acpi_write_bit_register (int ,int) ;
 TYPE_2__ errata ;

__attribute__((used)) static void acpi_processor_power_verify_c3(struct acpi_processor *pr,
        struct acpi_processor_cx *cx)
{
 static int bm_check_flag = -1;
 static int bm_control_flag = -1;


 if (!cx->address)
  return;
 else if (errata.piix4.fdma) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "C3 not supported on PIIX4 with Type-F DMA\n"));
  return;
 }


 if (bm_check_flag == -1) {

  acpi_processor_power_init_bm_check(&(pr->flags), pr->id);
  bm_check_flag = pr->flags.bm_check;
  bm_control_flag = pr->flags.bm_control;
 } else {
  pr->flags.bm_check = bm_check_flag;
  pr->flags.bm_control = bm_control_flag;
 }

 if (pr->flags.bm_check) {
  if (!pr->flags.bm_control) {
   if (pr->flags.has_cst != 1) {

    ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "C3 support requires BM control\n"));
    return;
   } else {

    ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "C3 support without BM control\n"));
   }
  }
 } else {




  if (!(acpi_gbl_FADT.flags & ACPI_FADT_WBINVD)) {
   ACPI_DEBUG_PRINT((ACPI_DB_INFO,
       "Cache invalidation should work properly"
       " for C3 to be enabled on SMP systems\n"));
   return;
  }
 }







 cx->valid = 1;

 cx->latency_ticks = cx->latency;
 acpi_write_bit_register(ACPI_BITREG_BUS_MASTER_RLD, 1);

 return;
}
