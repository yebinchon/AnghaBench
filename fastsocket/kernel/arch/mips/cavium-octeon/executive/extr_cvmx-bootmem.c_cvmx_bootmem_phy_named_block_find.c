
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cvmx_bootmem_named_block_desc {scalar_t__ size; int name; } ;
struct TYPE_2__ {int major_version; unsigned int named_block_num_blocks; scalar_t__ minor_version; scalar_t__ named_block_name_len; int named_block_array_addr; } ;


 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_bootmem_lock () ;
 int cvmx_bootmem_unlock () ;
 int cvmx_dprintf (char*,...) ;
 scalar_t__ cvmx_phys_to_ptr (int ) ;
 int strncmp (char*,int ,scalar_t__) ;

struct cvmx_bootmem_named_block_desc *
 cvmx_bootmem_phy_named_block_find(char *name, uint32_t flags)
{
 unsigned int i;
 struct cvmx_bootmem_named_block_desc *named_block_array_ptr;
 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_lock();


 named_block_array_ptr = (struct cvmx_bootmem_named_block_desc *)
     cvmx_phys_to_ptr(cvmx_bootmem_desc->named_block_array_addr);






 if (cvmx_bootmem_desc->major_version == 3) {
  for (i = 0;
       i < cvmx_bootmem_desc->named_block_num_blocks; i++) {
   if ((name && named_block_array_ptr[i].size
        && !strncmp(name, named_block_array_ptr[i].name,
      cvmx_bootmem_desc->named_block_name_len
      - 1))
       || (!name && !named_block_array_ptr[i].size)) {
    if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
     cvmx_bootmem_unlock();

    return &(named_block_array_ptr[i]);
   }
  }
 } else {
  cvmx_dprintf("ERROR: Incompatible bootmem descriptor "
        "version: %d.%d at addr: %p\n",
        (int)cvmx_bootmem_desc->major_version,
        (int)cvmx_bootmem_desc->minor_version,
        cvmx_bootmem_desc);
 }
 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_unlock();

 return ((void*)0);
}
