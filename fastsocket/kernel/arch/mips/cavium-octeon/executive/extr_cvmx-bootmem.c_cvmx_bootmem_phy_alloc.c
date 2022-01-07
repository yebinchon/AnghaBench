
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_2__ {int major_version; int head_addr; scalar_t__ minor_version; } ;


 int CVMX_BOOTMEM_ALIGNMENT_SIZE ;
 int CVMX_BOOTMEM_FLAG_END_ALLOC ;
 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 int __ALIGN_MASK (int,int) ;
 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_bootmem_lock () ;
 int cvmx_bootmem_phy_get_next (int) ;
 int cvmx_bootmem_phy_get_size (int) ;
 int cvmx_bootmem_phy_set_next (int,int) ;
 int cvmx_bootmem_phy_set_size (int,int) ;
 int cvmx_bootmem_unlock () ;
 int cvmx_dprintf (char*,unsigned long long,unsigned long long,...) ;
 int max (int,int) ;
 int min (int,int) ;

int64_t cvmx_bootmem_phy_alloc(uint64_t req_size, uint64_t address_min,
          uint64_t address_max, uint64_t alignment,
          uint32_t flags)
{

 uint64_t head_addr;
 uint64_t ent_addr;

 uint64_t prev_addr = 0;
 uint64_t new_ent_addr = 0;
 uint64_t desired_min_addr;
 if (cvmx_bootmem_desc->major_version > 3) {
  cvmx_dprintf("ERROR: Incompatible bootmem descriptor "
        "version: %d.%d at addr: %p\n",
        (int)cvmx_bootmem_desc->major_version,
        (int)cvmx_bootmem_desc->minor_version,
        cvmx_bootmem_desc);
  goto error_out;
 }
 if (!req_size)
  goto error_out;


 req_size = (req_size + (CVMX_BOOTMEM_ALIGNMENT_SIZE - 1)) &
  ~(CVMX_BOOTMEM_ALIGNMENT_SIZE - 1);







 if (address_min && !address_max)
  address_max = address_min + req_size;
 else if (!address_min && !address_max)
  address_max = ~0ull;






 if (alignment < CVMX_BOOTMEM_ALIGNMENT_SIZE)
  alignment = CVMX_BOOTMEM_ALIGNMENT_SIZE;






 if (alignment)
  address_min = __ALIGN_MASK(address_min, (alignment - 1));






 if (req_size > address_max - address_min)
  goto error_out;



 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_lock();
 head_addr = cvmx_bootmem_desc->head_addr;
 ent_addr = head_addr;
 for (; ent_addr;
      prev_addr = ent_addr,
      ent_addr = cvmx_bootmem_phy_get_next(ent_addr)) {
  uint64_t usable_base, usable_max;
  uint64_t ent_size = cvmx_bootmem_phy_get_size(ent_addr);

  if (cvmx_bootmem_phy_get_next(ent_addr)
      && ent_addr > cvmx_bootmem_phy_get_next(ent_addr)) {
   cvmx_dprintf("Internal bootmem_alloc() error: ent: "
    "0x%llx, next: 0x%llx\n",
    (unsigned long long)ent_addr,
    (unsigned long long)
    cvmx_bootmem_phy_get_next(ent_addr));
   goto error_out;
  }






  usable_base =
      __ALIGN_MASK(max(address_min, ent_addr), alignment - 1);
  usable_max = min(address_max, ent_addr + ent_size);





  desired_min_addr = usable_base;




  if (!((ent_addr + ent_size) > usable_base
    && ent_addr < address_max
    && req_size <= usable_max - usable_base))
   continue;






  if (flags & CVMX_BOOTMEM_FLAG_END_ALLOC) {
   desired_min_addr = usable_max - req_size;




   desired_min_addr &= ~(alignment - 1);
  }


  if (desired_min_addr == ent_addr) {
   if (req_size < ent_size) {




    new_ent_addr = ent_addr + req_size;
    cvmx_bootmem_phy_set_next(new_ent_addr,
     cvmx_bootmem_phy_get_next(ent_addr));
    cvmx_bootmem_phy_set_size(new_ent_addr,
       ent_size -
       req_size);





    cvmx_bootmem_phy_set_next(ent_addr,
       new_ent_addr);
   }





   if (prev_addr)
    cvmx_bootmem_phy_set_next(prev_addr,
     cvmx_bootmem_phy_get_next(ent_addr));
   else




    cvmx_bootmem_desc->head_addr =
     cvmx_bootmem_phy_get_next(ent_addr);

   if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
    cvmx_bootmem_unlock();
   return desired_min_addr;
  }
  new_ent_addr = desired_min_addr;
  cvmx_bootmem_phy_set_next(new_ent_addr,
     cvmx_bootmem_phy_get_next
     (ent_addr));
  cvmx_bootmem_phy_set_size(new_ent_addr,
     cvmx_bootmem_phy_get_size
     (ent_addr) -
     (desired_min_addr -
      ent_addr));
  cvmx_bootmem_phy_set_size(ent_addr,
     desired_min_addr - ent_addr);
  cvmx_bootmem_phy_set_next(ent_addr, new_ent_addr);

 }
error_out:

 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_unlock();
 return -1;
}
