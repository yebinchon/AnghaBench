
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int urb_array; } ;


 int SBUF_NUM ;
 int free_all_urb_generic (int ,int ) ;

__attribute__((used)) static void free_all_urb(struct video_data *video)
{
 free_all_urb_generic(video->urb_array, SBUF_NUM);
}
