
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int DeviceName; } ;
typedef TYPE_1__ Mpi2BootDeviceDeviceName_t ;


 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static inline int
_scsih_srch_boot_device_name(u64 device_name,
 Mpi2BootDeviceDeviceName_t *boot_device)
{
 return (device_name == le64_to_cpu(boot_device->DeviceName)) ? 1 : 0;
}
