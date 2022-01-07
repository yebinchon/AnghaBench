
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edd_device {int index; int * info; int mbr_signature; } ;
struct TYPE_2__ {int * edd_info; int * mbr_signature; } ;


 TYPE_1__ edd ;
 scalar_t__ edd_has_edd_info (struct edd_device*) ;
 scalar_t__ edd_has_mbr_signature (struct edd_device*) ;

__attribute__((used)) static inline void
edd_dev_set_info(struct edd_device *edev, int i)
{
 edev->index = i;
 if (edd_has_mbr_signature(edev))
  edev->mbr_signature = edd.mbr_signature[i];
 if (edd_has_edd_info(edev))
  edev->info = &edd.edd_info[i];
}
