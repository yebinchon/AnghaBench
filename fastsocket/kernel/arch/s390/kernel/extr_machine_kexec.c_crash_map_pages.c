
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long start; } ;


 int BUG_ON (int) ;
 unsigned long KEXEC_CRASH_MEM_ALIGN ;
 TYPE_1__ crashk_res ;
 unsigned long resource_size (TYPE_1__*) ;
 int vmem_add_mapping (unsigned long,unsigned long) ;
 int vmem_remove_mapping (unsigned long,unsigned long) ;

__attribute__((used)) static void crash_map_pages(int enable)
{
 unsigned long size = resource_size(&crashk_res);

 BUG_ON(crashk_res.start % KEXEC_CRASH_MEM_ALIGN ||
        size % KEXEC_CRASH_MEM_ALIGN);
 if (enable)
  vmem_add_mapping(crashk_res.start, size);
 else
  vmem_remove_mapping(crashk_res.start, size);
}
