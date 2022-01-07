
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr_data; int regspacing; int regsize; scalar_t__ addr; } ;
struct smi_info {int io_size; TYPE_1__ io; } ;


 int iounmap (scalar_t__) ;
 int release_mem_region (unsigned long,int) ;

__attribute__((used)) static void mem_cleanup(struct smi_info *info)
{
 unsigned long addr = info->io.addr_data;
 int mapsize;

 if (info->io.addr) {
  iounmap(info->io.addr);

  mapsize = ((info->io_size * info->io.regspacing)
      - (info->io.regspacing - info->io.regsize));

  release_mem_region(addr, mapsize);
 }
}
