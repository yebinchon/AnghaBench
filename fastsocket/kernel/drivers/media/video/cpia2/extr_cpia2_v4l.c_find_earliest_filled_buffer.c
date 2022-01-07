
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct camera_data {int num_frames; TYPE_1__* buffers; } ;
struct TYPE_2__ {scalar_t__ status; struct timeval timestamp; } ;


 scalar_t__ FRAME_READY ;

__attribute__((used)) static int find_earliest_filled_buffer(struct camera_data *cam)
{
 int i;
 int found = -1;
 for (i=0; i<cam->num_frames; i++) {
  if(cam->buffers[i].status == FRAME_READY) {
   if(found < 0) {
    found = i;
   } else {

    struct timeval *tv1, *tv2;
    tv1 = &cam->buffers[i].timestamp;
    tv2 = &cam->buffers[found].timestamp;
    if(tv1->tv_sec < tv2->tv_sec ||
       (tv1->tv_sec == tv2->tv_sec &&
        tv1->tv_usec < tv2->tv_usec))
     found = i;
   }
  }
 }
 return found;
}
