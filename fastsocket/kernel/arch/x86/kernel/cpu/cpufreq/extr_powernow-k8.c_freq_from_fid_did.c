
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int x86; } ;


 int BUG () ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u32 freq_from_fid_did(u32 fid, u32 did)
{
 u32 mhz = 0;

 if (boot_cpu_data.x86 == 0x10)
  mhz = (100 * (fid + 0x10)) >> did;
 else if (boot_cpu_data.x86 == 0x11)
  mhz = (100 * (fid + 8)) >> did;
 else
  BUG();

 return mhz * 1000;
}
