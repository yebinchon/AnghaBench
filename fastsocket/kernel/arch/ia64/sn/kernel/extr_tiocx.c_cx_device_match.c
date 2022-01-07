
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx_device_id {scalar_t__ part_num; scalar_t__ mfg_num; } ;
struct TYPE_2__ {scalar_t__ part_num; scalar_t__ mfg_num; } ;
struct cx_dev {TYPE_1__ cx_id; } ;



__attribute__((used)) static const struct cx_device_id *cx_device_match(const struct cx_device_id
        *ids,
        struct cx_dev *cx_device)
{






 while (ids->part_num && ids->mfg_num) {
  if (ids->part_num == cx_device->cx_id.part_num &&
      ids->mfg_num == cx_device->cx_id.mfg_num)
   return ids;
  ids++;
 }

 return ((void*)0);
}
