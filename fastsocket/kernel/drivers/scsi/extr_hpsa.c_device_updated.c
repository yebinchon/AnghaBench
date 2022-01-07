
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {scalar_t__ raid_level; } ;



__attribute__((used)) static inline int device_updated(struct hpsa_scsi_dev_t *dev1,
 struct hpsa_scsi_dev_t *dev2)
{




 if (dev1->raid_level != dev2->raid_level)
  return 1;
 return 0;
}
