
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALT_MEM_K ;
 int EXT_MEM_K ;
 int error (char*) ;
 char* output_data ;

void setup_normal_output_buffer(void)
{




 if ((ALT_MEM_K > EXT_MEM_K ? ALT_MEM_K : EXT_MEM_K) < 1024)
  error("Less than 2MB of memory.\n");

 output_data = (char *) 0x100000;
}
