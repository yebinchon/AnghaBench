
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERNEL_LOAD_ADR ;
 char* output_data ;

void setup_normal_output_buffer(void)
{
 output_data = (char *)KERNEL_LOAD_ADR;
}
