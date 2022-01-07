
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HEAP_SIZE ;
 int _end ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 int gunzip () ;
 int makecrc () ;
 scalar_t__ output_data ;
 unsigned long output_ptr ;
 int puts (char*) ;

void decompress_kernel(void)
{
 output_data = 0;
 output_ptr = (unsigned long)0x400000;
 free_mem_ptr = (unsigned long)&_end;
 free_mem_end_ptr = free_mem_ptr + HEAP_SIZE;

 makecrc();
 puts("Uncompressing Linux... ");
 gunzip();
 puts("Ok, booting the kernel.\n");
}
