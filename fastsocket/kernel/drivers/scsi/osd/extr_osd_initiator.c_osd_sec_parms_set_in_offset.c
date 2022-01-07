
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* data_in_integrity_check_offset; } ;
struct TYPE_3__ {void* data_in_integrity_check_offset; } ;
struct osd_security_parameters {TYPE_2__ v2; TYPE_1__ v1; } ;
typedef void* osd_cdb_offset ;



__attribute__((used)) static inline void osd_sec_parms_set_in_offset(bool is_v1,
 struct osd_security_parameters *sec_parms, osd_cdb_offset offset)
{
 if (is_v1)
  sec_parms->v1.data_in_integrity_check_offset = offset;
 else
  sec_parms->v2.data_in_integrity_check_offset = offset;
}
