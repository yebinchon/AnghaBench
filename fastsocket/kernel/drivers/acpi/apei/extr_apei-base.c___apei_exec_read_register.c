
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int bit_offset; } ;
struct acpi_whea_header {int mask; TYPE_1__ register_region; } ;


 int apei_read (int*,TYPE_1__*) ;

int __apei_exec_read_register(struct acpi_whea_header *entry, u64 *val)
{
 int rc;

 rc = apei_read(val, &entry->register_region);
 if (rc)
  return rc;
 *val >>= entry->register_region.bit_offset;
 *val &= entry->mask;

 return 0;
}
