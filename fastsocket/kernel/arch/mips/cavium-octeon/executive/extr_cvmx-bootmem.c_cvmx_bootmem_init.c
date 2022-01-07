
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_bootmem_desc {int dummy; } ;


 int CAST64 (void*) ;
 struct cvmx_bootmem_desc* cvmx_bootmem_desc ;
 struct cvmx_bootmem_desc* cvmx_phys_to_ptr (int ) ;

int cvmx_bootmem_init(void *mem_desc_ptr)
{
 if (!cvmx_bootmem_desc) {




  cvmx_bootmem_desc = (struct cvmx_bootmem_desc *) mem_desc_ptr;

 }

 return 0;
}
