
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct zc0301_device {TYPE_2__* frame; int outqueue; int inqueue; } ;
struct TYPE_3__ {scalar_t__ bytesused; } ;
struct TYPE_4__ {TYPE_1__ buf; int state; } ;


 int F_UNUSED ;
 int INIT_LIST_HEAD (int *) ;
 size_t ZC0301_MAX_FRAMES ;

__attribute__((used)) static void zc0301_empty_framequeues(struct zc0301_device* cam)
{
 u32 i;

 INIT_LIST_HEAD(&cam->inqueue);
 INIT_LIST_HEAD(&cam->outqueue);

 for (i = 0; i < ZC0301_MAX_FRAMES; i++) {
  cam->frame[i].state = F_UNUSED;
  cam->frame[i].buf.bytesused = 0;
 }
}
