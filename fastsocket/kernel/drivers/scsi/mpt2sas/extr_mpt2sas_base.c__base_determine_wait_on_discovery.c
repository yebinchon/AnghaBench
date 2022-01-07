
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int CurrentBootDeviceForm; int ReqBootDeviceForm; int ReqAltBootDeviceForm; } ;
struct TYPE_3__ {int BiosVersion; } ;
struct MPT2SAS_ADAPTER {TYPE_2__ bios_pg2; TYPE_1__ bios_pg3; scalar_t__ ir_firmware; } ;


 int MPI2_BIOSPAGE2_FORM_MASK ;
 int MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED ;

__attribute__((used)) static int
_base_determine_wait_on_discovery(struct MPT2SAS_ADAPTER *ioc)
{






 if (ioc->ir_firmware)
  return 1;


 if (!ioc->bios_pg3.BiosVersion)
  return 0;
 if ((ioc->bios_pg2.CurrentBootDeviceForm &
     MPI2_BIOSPAGE2_FORM_MASK) ==
     MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED &&

    (ioc->bios_pg2.ReqBootDeviceForm &
     MPI2_BIOSPAGE2_FORM_MASK) ==
     MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED &&

    (ioc->bios_pg2.ReqAltBootDeviceForm &
     MPI2_BIOSPAGE2_FORM_MASK) ==
     MPI2_BIOSPAGE2_FORM_NO_DEVICE_SPECIFIED)
  return 0;

 return 1;
}
