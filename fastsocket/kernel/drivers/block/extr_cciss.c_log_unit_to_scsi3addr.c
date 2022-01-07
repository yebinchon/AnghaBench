
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {TYPE_1__** drv; } ;
typedef TYPE_2__ ctlr_info_t ;
struct TYPE_4__ {int LunID; } ;


 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static inline void log_unit_to_scsi3addr(ctlr_info_t *h,
 unsigned char scsi3addr[], uint32_t log_unit)
{
 memcpy(scsi3addr, h->drv[log_unit]->LunID,
  sizeof(h->drv[log_unit]->LunID));
}
