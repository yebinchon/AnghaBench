
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ulg ;
typedef int uch ;


 int WSIZE ;
 void* free_mem_end_ptr ;
 void* free_mem_ptr ;
 int gunzip () ;
 int * input_data ;
 size_t input_data_size ;
 int makecrc () ;
 int malloc (int ) ;
 int * output_data ;
 unsigned int output_ptr ;
 int window ;

unsigned int
decompress_kernel(void *output_start,
    void *input_start,
    size_t ksize,
    size_t kzsize)
{
 output_data = (uch *)output_start;
 input_data = (uch *)input_start;
 input_data_size = kzsize;


 free_mem_ptr = (ulg)output_start + ksize;
 free_mem_end_ptr = (ulg)output_start + ksize + 0x200000;



 window = malloc(WSIZE);

 makecrc();

 gunzip();

 return output_ptr;
}
