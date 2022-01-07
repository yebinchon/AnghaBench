
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int SASAddress; } ;
typedef TYPE_1__ Mpi2BootDeviceSasWwid_t ;


 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static inline int
_scsih_srch_boot_sas_address(u64 sas_address,
    Mpi2BootDeviceSasWwid_t *boot_device)
{
 return (sas_address == le64_to_cpu(boot_device->SASAddress)) ? 1 : 0;
}
