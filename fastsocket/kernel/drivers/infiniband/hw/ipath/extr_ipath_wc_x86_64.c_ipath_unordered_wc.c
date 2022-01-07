
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ X86_VENDOR_AMD ;
 TYPE_1__ boot_cpu_data ;

int ipath_unordered_wc(void)
{
 return boot_cpu_data.x86_vendor != X86_VENDOR_AMD;
}
