
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {scalar_t__ devtype; scalar_t__ bus; int vendor; int model; int device_id; int scsi3addr; } ;


 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static inline int device_is_the_same(struct hpsa_scsi_dev_t *dev1,
 struct hpsa_scsi_dev_t *dev2)
{




 if (memcmp(dev1->scsi3addr, dev2->scsi3addr,
  sizeof(dev1->scsi3addr)) != 0)
  return 0;
 if (memcmp(dev1->device_id, dev2->device_id,
  sizeof(dev1->device_id)) != 0)
  return 0;
 if (memcmp(dev1->model, dev2->model, sizeof(dev1->model)) != 0)
  return 0;
 if (memcmp(dev1->vendor, dev2->vendor, sizeof(dev1->vendor)) != 0)
  return 0;
 if (dev1->devtype != dev2->devtype)
  return 0;
 if (dev1->bus != dev2->bus)
  return 0;
 return 1;
}
