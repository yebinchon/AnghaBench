
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct __vxge_hw_channel {size_t length; size_t free_ptr; size_t reserve_ptr; scalar_t__ compl_index; scalar_t__ post_index; scalar_t__ reserve_top; int ** work_arr; int ** free_arr; int * orig_arr; int * reserve_arr; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int VXGE_HW_OK ;

enum vxge_hw_status
__vxge_hw_channel_reset(struct __vxge_hw_channel *channel)
{
 u32 i;

 for (i = 0; i < channel->length; i++) {
  if (channel->reserve_arr != ((void*)0))
   channel->reserve_arr[i] = channel->orig_arr[i];
  if (channel->free_arr != ((void*)0))
   channel->free_arr[i] = ((void*)0);
  if (channel->work_arr != ((void*)0))
   channel->work_arr[i] = ((void*)0);
 }
 channel->free_ptr = channel->length;
 channel->reserve_ptr = channel->length;
 channel->reserve_top = 0;
 channel->post_index = 0;
 channel->compl_index = 0;

 return VXGE_HW_OK;
}
