
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_data {int front; int endpoint_addr; TYPE_1__* pd; scalar_t__* urb_array; } ;
struct TYPE_2__ {int udev; } ;


 int GFP_KERNEL ;
 int SBUF_NUM ;
 int alloc_bulk_urbs_generic (scalar_t__*,int ,int ,int ,int,int ,int ,int ) ;
 int urb_complete_bulk ;

__attribute__((used)) static int prepare_bulk_urb(struct video_data *video)
{
 if (video->urb_array[0])
  return 0;

 alloc_bulk_urbs_generic(video->urb_array, SBUF_NUM,
   video->pd->udev, video->endpoint_addr,
   0x2000, GFP_KERNEL,
   urb_complete_bulk, video->front);
 return 0;
}
