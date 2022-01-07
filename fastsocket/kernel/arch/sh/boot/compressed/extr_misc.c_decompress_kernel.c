
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_DISABLE ;
 int CACHE_ENABLE ;
 int CONFIG_MEMORY_START ;
 scalar_t__ HEAP_SIZE ;
 unsigned long P2SEG ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PHYSADDR (scalar_t__) ;
 int _end ;
 int _text ;
 int cache_control (int ) ;
 int decompress (int ,int ,int *,int *,unsigned char*,int *,int ) ;
 int error ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 int input_data ;
 int input_len ;
 unsigned char* output ;
 int puts (char*) ;

void decompress_kernel(void)
{
 unsigned long output_addr;




 output_addr = PHYSADDR((unsigned long)&_text+PAGE_SIZE);





 output = (unsigned char *)output_addr;
 free_mem_ptr = (unsigned long)&_end;
 free_mem_end_ptr = free_mem_ptr + HEAP_SIZE;

 puts("Uncompressing Linux... ");
 cache_control(CACHE_ENABLE);
 decompress(input_data, input_len, ((void*)0), ((void*)0), output, ((void*)0), error);
 cache_control(CACHE_DISABLE);
 puts("Ok, booting the kernel.\n");
}
