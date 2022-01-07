
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int addr_data; int regspacing; int regsize; } ;
struct smi_info {int io_size; TYPE_1__ io; } ;


 int release_region (unsigned int,int ) ;

__attribute__((used)) static void port_cleanup(struct smi_info *info)
{
 unsigned int addr = info->io.addr_data;
 int idx;

 if (addr) {
  for (idx = 0; idx < info->io_size; idx++)
   release_region(addr + idx * info->io.regspacing,
           info->io.regsize);
 }
}
