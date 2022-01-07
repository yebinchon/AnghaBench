
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_integer ;



 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_FUNCTION_TRACE_STR (int ,char*) ;
 scalar_t__ ACPI_IS_DIGIT (char) ;
 scalar_t__ ACPI_IS_SPACE (char) ;
 scalar_t__ ACPI_IS_XDIGIT (char) ;
 char ACPI_TOLOWER (char) ;
 scalar_t__ ACPI_TOUPPER (char) ;
 int ACPI_UINT32_MAX ;
 int ACPI_UINT64_MAX ;
 int AE_BAD_DECIMAL_CONSTANT ;
 int AE_BAD_HEX_CONSTANT ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_gbl_integer_byte_width ;
 int acpi_ut_short_divide (int,int,int*,int *) ;
 int return_ACPI_STATUS (int ) ;
 int ut_stroul64 ;

acpi_status
acpi_ut_strtoul64(char *string, u32 base, acpi_integer * ret_integer)
{
 u32 this_digit = 0;
 acpi_integer return_value = 0;
 acpi_integer quotient;
 acpi_integer dividend;
 u32 to_integer_op = (base == 128);
 u32 mode32 = (acpi_gbl_integer_byte_width == 4);
 u8 valid_digits = 0;
 u8 sign_of0x = 0;
 u8 term = 0;

 ACPI_FUNCTION_TRACE_STR(ut_stroul64, string);

 switch (base) {
 case 128:
 case 16:
  break;

 default:

  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (!string) {
  goto error_exit;
 }



 while ((*string) && (ACPI_IS_SPACE(*string) || *string == '\t')) {
  string++;
 }

 if (to_integer_op) {




  if ((*string == '0') && (ACPI_TOLOWER(*(string + 1)) == 'x')) {
   sign_of0x = 1;
   base = 16;


   string += 2;
  } else {
   base = 10;
  }
 }



 if (!(*string) || ACPI_IS_SPACE(*string) || *string == '\t') {
  if (to_integer_op) {
   goto error_exit;
  } else {
   goto all_done;
  }
 }





 dividend = (mode32) ? ACPI_UINT32_MAX : ACPI_UINT64_MAX;



 while (*string) {
  if (ACPI_IS_DIGIT(*string)) {



   this_digit = ((u8) * string) - '0';
  } else if (base == 10) {



   term = 1;
  } else {
   this_digit = (u8) ACPI_TOUPPER(*string);
   if (ACPI_IS_XDIGIT((char)this_digit)) {



    this_digit = this_digit - 'A' + 10;
   } else {
    term = 1;
   }
  }

  if (term) {
   if (to_integer_op) {
    goto error_exit;
   } else {
    break;
   }
  } else if ((valid_digits == 0) && (this_digit == 0)
      && !sign_of0x) {


   string++;
   continue;
  }

  valid_digits++;

  if (sign_of0x && ((valid_digits > 16)
      || ((valid_digits > 8) && mode32))) {





   goto error_exit;
  }



  (void)
      acpi_ut_short_divide((dividend - (acpi_integer) this_digit),
      base, &quotient, ((void*)0));

  if (return_value > quotient) {
   if (to_integer_op) {
    goto error_exit;
   } else {
    break;
   }
  }

  return_value *= base;
  return_value += this_digit;
  string++;
 }



      all_done:

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Converted value: %8.8X%8.8X\n",
     ACPI_FORMAT_UINT64(return_value)));

 *ret_integer = return_value;
 return_ACPI_STATUS(AE_OK);

      error_exit:


 if (base == 10) {
  return_ACPI_STATUS(AE_BAD_DECIMAL_CONSTANT);
 } else {
  return_ACPI_STATUS(AE_BAD_HEX_CONSTANT);
 }
}
