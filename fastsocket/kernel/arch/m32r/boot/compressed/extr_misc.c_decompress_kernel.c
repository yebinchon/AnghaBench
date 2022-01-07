
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BOOT_HEAP_SIZE ;
 scalar_t__ CONFIG_MEMORY_START ;
 int decompress (unsigned char*,int,int *,int *,unsigned char*,int *,int ) ;
 int error ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 int puts (char*) ;

void
decompress_kernel(int mmu_on, unsigned char *zimage_data,
    unsigned int zimage_len, unsigned long heap)
{
 unsigned char *input_data = zimage_data;
 int input_len = zimage_len;
 unsigned char *output_data;

 output_data = (unsigned char *)CONFIG_MEMORY_START + 0x2000
  + (mmu_on ? 0x80000000 : 0);
 free_mem_ptr = heap;
 free_mem_end_ptr = free_mem_ptr + BOOT_HEAP_SIZE;

 puts("\nDecompressing Linux... ");
 decompress(input_data, input_len, ((void*)0), ((void*)0), output_data, ((void*)0), error);
 puts("done.\nBooting the kernel.\n");
}
