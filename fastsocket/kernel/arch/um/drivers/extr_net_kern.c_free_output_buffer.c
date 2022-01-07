
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_pages (unsigned long,int ) ;

void free_output_buffer(void *buffer)
{
 free_pages((unsigned long) buffer, 0);
}
