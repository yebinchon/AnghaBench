
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulg ;
typedef int uch ;
struct moveparams {char* low_buffer_start; int hcount; int * high_buffer_start; } ;


 int ALT_MEM_K ;
 int EXT_MEM_K ;
 scalar_t__ HEAP_SIZE ;
 scalar_t__ LOW_BUFFER_SIZE ;
 scalar_t__ LOW_BUFFER_START ;
 int end ;
 int error (char*) ;
 long free_mem_end_ptr ;
 int * high_buffer_start ;
 int high_loaded ;
 char* output_data ;

void setup_output_buffer_if_we_run_high(struct moveparams *mv)
{
 high_buffer_start = (uch *)(((ulg) &end) + HEAP_SIZE);




 if ((ALT_MEM_K > EXT_MEM_K ? ALT_MEM_K : EXT_MEM_K) < (3 * 1024))
  error("Less than 4MB of memory.\n");

 mv->low_buffer_start = output_data = (char *) LOW_BUFFER_START;
 high_loaded = 1;
 free_mem_end_ptr = (long) high_buffer_start;
 if (0x100000 + LOW_BUFFER_SIZE > (ulg) high_buffer_start) {
  high_buffer_start = (uch *)(0x100000 + LOW_BUFFER_SIZE);
  mv->hcount = 0;
 } else {
  mv->hcount = -1;
 }
 mv->high_buffer_start = high_buffer_start;
}
