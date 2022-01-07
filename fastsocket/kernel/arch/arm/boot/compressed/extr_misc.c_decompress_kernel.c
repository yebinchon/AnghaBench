
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ulg ;
typedef int uch ;


 int __machine_arch_type ;
 int arch_decomp_setup () ;
 void* free_mem_end_ptr ;
 void* free_mem_ptr ;
 int gunzip () ;
 int makecrc () ;
 int * output_data ;
 void* output_ptr ;
 int putstr (char*) ;

ulg
decompress_kernel(ulg output_start, ulg free_mem_ptr_p, ulg free_mem_ptr_end_p,
    int arch_id)
{
 output_data = (uch *)output_start;
 free_mem_ptr = free_mem_ptr_p;
 free_mem_end_ptr = free_mem_ptr_end_p;
 __machine_arch_type = arch_id;

 arch_decomp_setup();

 makecrc();
 putstr("Uncompressing Linux...");
 gunzip();
 putstr(" done, booting the kernel.\n");
 return output_ptr;
}
