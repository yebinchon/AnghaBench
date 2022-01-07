
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ses_component {scalar_t__ addr; } ;
struct enclosure_device {int components; TYPE_1__* component; } ;
struct efd {scalar_t__ addr; int dev; } ;
struct TYPE_2__ {struct ses_component* scratch; } ;


 int enclosure_add_device (struct enclosure_device*,int,int ) ;

__attribute__((used)) static int ses_enclosure_find_by_addr(struct enclosure_device *edev,
          void *data)
{
 struct efd *efd = data;
 int i;
 struct ses_component *scomp;

 if (!edev->component[0].scratch)
  return 0;

 for (i = 0; i < edev->components; i++) {
  scomp = edev->component[i].scratch;
  if (scomp->addr != efd->addr)
   continue;

  enclosure_add_device(edev, i, efd->dev);
  return 1;
 }
 return 0;
}
