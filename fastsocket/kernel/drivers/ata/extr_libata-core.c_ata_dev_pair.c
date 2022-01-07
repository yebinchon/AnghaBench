
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {struct ata_device* device; } ;
struct ata_device {int devno; struct ata_link* link; } ;


 int ata_dev_enabled (struct ata_device*) ;

struct ata_device *ata_dev_pair(struct ata_device *adev)
{
 struct ata_link *link = adev->link;
 struct ata_device *pair = &link->device[1 - adev->devno];
 if (!ata_dev_enabled(pair))
  return ((void*)0);
 return pair;
}
