
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;

void *get_output_buffer(int *len_out)
{
 void *ret;

 ret = (void *) __get_free_pages(GFP_KERNEL, 0);
 if (ret) *len_out = PAGE_SIZE;
 else *len_out = 0;
 return ret;
}
