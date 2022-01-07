
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int * intermediate_rxbuffer; int max_frame_size; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int * kmalloc (int ,int) ;

__attribute__((used)) static int mgsl_alloc_intermediate_rxbuffer_memory(struct mgsl_struct *info)
{
 info->intermediate_rxbuffer = kmalloc(info->max_frame_size, GFP_KERNEL | GFP_DMA);
 if ( info->intermediate_rxbuffer == ((void*)0) )
  return -ENOMEM;

 return 0;

}
