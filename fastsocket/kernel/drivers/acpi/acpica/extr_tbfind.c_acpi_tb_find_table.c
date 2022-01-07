
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_header {int signature; int oem_table_id; int oem_id; } ;
typedef int acpi_status ;
struct TYPE_6__ {size_t count; TYPE_2__* tables; } ;
struct TYPE_5__ {TYPE_1__* pointer; int signature; } ;
struct TYPE_4__ {int * oem_table_id; int * oem_id; int * signature; } ;


 int ACPI_DB_TABLES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_MEMCMP (int *,int ,int ) ;
 int ACPI_MEMSET (struct acpi_table_header*,int ,int) ;
 int ACPI_NAME_SIZE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int ACPI_STRNCPY (int ,char*,int ) ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 TYPE_3__ acpi_gbl_root_table_list ;
 int acpi_tb_verify_table (TYPE_2__*) ;
 int return_ACPI_STATUS (int ) ;
 int tb_find_table ;

acpi_status
acpi_tb_find_table(char *signature,
     char *oem_id, char *oem_table_id, u32 *table_index)
{
 u32 i;
 acpi_status status;
 struct acpi_table_header header;

 ACPI_FUNCTION_TRACE(tb_find_table);



 ACPI_MEMSET(&header, 0, sizeof(struct acpi_table_header));
 ACPI_STRNCPY(header.signature, signature, ACPI_NAME_SIZE);
 ACPI_STRNCPY(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
 ACPI_STRNCPY(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);



 for (i = 0; i < acpi_gbl_root_table_list.count; ++i) {
  if (ACPI_MEMCMP(&(acpi_gbl_root_table_list.tables[i].signature),
    header.signature, ACPI_NAME_SIZE)) {



   continue;
  }



  if (!acpi_gbl_root_table_list.tables[i].pointer) {



   status =
       acpi_tb_verify_table(&acpi_gbl_root_table_list.
       tables[i]);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }

   if (!acpi_gbl_root_table_list.tables[i].pointer) {
    continue;
   }
  }



  if (!ACPI_MEMCMP
      (acpi_gbl_root_table_list.tables[i].pointer->signature,
       header.signature, ACPI_NAME_SIZE) && (!oem_id[0]
          ||
          !ACPI_MEMCMP
          (acpi_gbl_root_table_list.
           tables[i].pointer->
           oem_id,
           header.oem_id,
           ACPI_OEM_ID_SIZE))
      && (!oem_table_id[0]
   || !ACPI_MEMCMP(acpi_gbl_root_table_list.tables[i].
     pointer->oem_table_id,
     header.oem_table_id,
     ACPI_OEM_TABLE_ID_SIZE))) {
   *table_index = i;

   ACPI_DEBUG_PRINT((ACPI_DB_TABLES,
       "Found table [%4.4s]\n",
       header.signature));
   return_ACPI_STATUS(AE_OK);
  }
 }

 return_ACPI_STATUS(AE_NOT_FOUND);
}
