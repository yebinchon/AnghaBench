
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_processor_cx {scalar_t__ entry_method; int address; } ;
struct TYPE_3__ {int address; } ;
struct TYPE_4__ {TYPE_1__ xpm_timer_block; } ;


 scalar_t__ ACPI_CSTATE_FFH ;
 scalar_t__ ACPI_CSTATE_HALT ;
 TYPE_2__ acpi_gbl_FADT ;
 int acpi_processor_ffh_cstate_enter (struct acpi_processor_cx*) ;
 int acpi_safe_halt () ;
 int inb (int ) ;
 int inl (int ) ;
 int start_critical_timings () ;
 int stop_critical_timings () ;

__attribute__((used)) static inline void acpi_idle_do_entry(struct acpi_processor_cx *cx)
{

 stop_critical_timings();
 if (cx->entry_method == ACPI_CSTATE_FFH) {

  acpi_processor_ffh_cstate_enter(cx);
 } else if (cx->entry_method == ACPI_CSTATE_HALT) {
  acpi_safe_halt();
 } else {
  int unused;

  inb(cx->address);



  unused = inl(acpi_gbl_FADT.xpm_timer_block.address);
 }
 start_critical_timings();
}
