
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int attr; } ;


 int ERST_RANGE_NVRAM ;
 int __erst_read_from_storage (scalar_t__,int ) ;
 int __erst_read_to_erange_from_nvram (scalar_t__,scalar_t__*) ;
 TYPE_1__ erst_erange ;

__attribute__((used)) static int __erst_read_to_erange(u64 record_id, u64 *offset)
{
 int rc;

 if (erst_erange.attr & ERST_RANGE_NVRAM)
  return __erst_read_to_erange_from_nvram(
   record_id, offset);

 rc = __erst_read_from_storage(record_id, 0);
 if (rc)
  return rc;
 *offset = 0;

 return 0;
}
