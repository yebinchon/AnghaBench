
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct w9968cf_device {size_t nbuffers; TYPE_1__* frame; int ** requested_frame; } ;
struct TYPE_2__ {int status; scalar_t__ queued; } ;


 int F_UNUSED ;

__attribute__((used)) static void w9968cf_init_framelist(struct w9968cf_device* cam)
{
 u8 i;

 for (i = 0; i < cam->nbuffers; i++) {
  cam->requested_frame[i] = ((void*)0);
  cam->frame[i].queued = 0;
  cam->frame[i].status = F_UNUSED;
 }
}
