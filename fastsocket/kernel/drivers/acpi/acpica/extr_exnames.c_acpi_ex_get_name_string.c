
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ acpi_status ;
typedef scalar_t__ acpi_object_type ;


 int ACPI_DB_EXEC ;
 int ACPI_DB_LOAD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int*) ;
 int ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ ACPI_TYPE_LOCAL_BANK_FIELD ;
 scalar_t__ ACPI_TYPE_LOCAL_INDEX_FIELD ;
 scalar_t__ ACPI_TYPE_LOCAL_REGION_FIELD ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_AML_BAD_NAME ;
 scalar_t__ AE_CTRL_PENDING ;
 int AE_INFO ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;




 int FALSE ;
 int TRUE ;
 char* acpi_ex_allocate_name_string (int,int) ;
 scalar_t__ acpi_ex_name_segment (int**,char*) ;
 int ex_get_name_string ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ex_get_name_string(acpi_object_type data_type,
   u8 * in_aml_address,
   char **out_name_string, u32 * out_name_length)
{
 acpi_status status = AE_OK;
 u8 *aml_address = in_aml_address;
 char *name_string = ((void*)0);
 u32 num_segments;
 u32 prefix_count = 0;
 u8 has_prefix = FALSE;

 ACPI_FUNCTION_TRACE_PTR(ex_get_name_string, aml_address);

 if (ACPI_TYPE_LOCAL_REGION_FIELD == data_type ||
     ACPI_TYPE_LOCAL_BANK_FIELD == data_type ||
     ACPI_TYPE_LOCAL_INDEX_FIELD == data_type) {



  name_string = acpi_ex_allocate_name_string(0, 1);
  if (!name_string) {
   status = AE_NO_MEMORY;
  } else {
   status =
       acpi_ex_name_segment(&aml_address, name_string);
  }
 } else {




  switch (*aml_address) {
  case 128:

   ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
       "RootPrefix(\\) at %p\n",
       aml_address));





   aml_address++;
   prefix_count = ACPI_UINT32_MAX;
   has_prefix = TRUE;
   break;

  case 129:



   do {
    ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
        "ParentPrefix (^) at %p\n",
        aml_address));

    aml_address++;
    prefix_count++;

   } while (*aml_address == 129);

   has_prefix = TRUE;
   break;

  default:



   break;
  }



  switch (*aml_address) {
  case 131:

   ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
       "DualNamePrefix at %p\n",
       aml_address));

   aml_address++;
   name_string =
       acpi_ex_allocate_name_string(prefix_count, 2);
   if (!name_string) {
    status = AE_NO_MEMORY;
    break;
   }



   has_prefix = TRUE;

   status =
       acpi_ex_name_segment(&aml_address, name_string);
   if (ACPI_SUCCESS(status)) {
    status =
        acpi_ex_name_segment(&aml_address,
        name_string);
   }
   break;

  case 130:

   ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
       "MultiNamePrefix at %p\n",
       aml_address));



   aml_address++;
   num_segments = *aml_address;

   name_string =
       acpi_ex_allocate_name_string(prefix_count,
        num_segments);
   if (!name_string) {
    status = AE_NO_MEMORY;
    break;
   }



   aml_address++;
   has_prefix = TRUE;

   while (num_segments &&
          (status =
    acpi_ex_name_segment(&aml_address,
           name_string)) == AE_OK) {
    num_segments--;
   }

   break;

  case 0:



   if (prefix_count == ACPI_UINT32_MAX) {
    ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
        "NameSeg is \"\\\" followed by NULL\n"));
   }



   aml_address++;
   name_string =
       acpi_ex_allocate_name_string(prefix_count, 0);
   if (!name_string) {
    status = AE_NO_MEMORY;
    break;
   }

   break;

  default:



   name_string =
       acpi_ex_allocate_name_string(prefix_count, 1);
   if (!name_string) {
    status = AE_NO_MEMORY;
    break;
   }

   status =
       acpi_ex_name_segment(&aml_address, name_string);
   break;
  }
 }

 if (AE_CTRL_PENDING == status && has_prefix) {



  ACPI_ERROR((AE_INFO, "Malformed Name at %p", name_string));
  status = AE_AML_BAD_NAME;
 }

 if (ACPI_FAILURE(status)) {
  if (name_string) {
   ACPI_FREE(name_string);
  }
  return_ACPI_STATUS(status);
 }

 *out_name_string = name_string;
 *out_name_length = (u32) (aml_address - in_aml_address);

 return_ACPI_STATUS(status);
}
