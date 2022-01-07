
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo; int hi; } ;
union uint64_overlay {int full; TYPE_1__ part; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_integer ;


 int ACPI_DIV_64_BY_32 (scalar_t__,int ,scalar_t__,int ,scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_AML_DIVIDE_BY_ZERO ;
 int AE_INFO ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;
 int ut_short_divide ;

acpi_status
acpi_ut_short_divide(acpi_integer dividend,
       u32 divisor,
       acpi_integer * out_quotient, u32 * out_remainder)
{
 union uint64_overlay dividend_ovl;
 union uint64_overlay quotient;
 u32 remainder32;

 ACPI_FUNCTION_TRACE(ut_short_divide);



 if (divisor == 0) {
  ACPI_ERROR((AE_INFO, "Divide by zero"));
  return_ACPI_STATUS(AE_AML_DIVIDE_BY_ZERO);
 }

 dividend_ovl.full = dividend;





 ACPI_DIV_64_BY_32(0, dividend_ovl.part.hi, divisor,
     quotient.part.hi, remainder32);
 ACPI_DIV_64_BY_32(remainder32, dividend_ovl.part.lo, divisor,
     quotient.part.lo, remainder32);



 if (out_quotient) {
  *out_quotient = quotient.full;
 }
 if (out_remainder) {
  *out_remainder = remainder32;
 }

 return_ACPI_STATUS(AE_OK);
}
