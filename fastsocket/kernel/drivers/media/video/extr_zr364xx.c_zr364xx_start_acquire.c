
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* frame; } ;
struct zr364xx_camera {int last_frame; int b_acquire; TYPE_1__ buffer; scalar_t__ cur_frame; } ;
struct TYPE_4__ {scalar_t__ cur_size; int ulState; } ;


 int DBG (char*) ;
 int FRAMES ;
 int ZR364XX_READ_IDLE ;

__attribute__((used)) static int zr364xx_start_acquire(struct zr364xx_camera *cam)
{
 int j;

 DBG("start acquire\n");

 cam->last_frame = -1;
 cam->cur_frame = 0;
 for (j = 0; j < FRAMES; j++) {
  cam->buffer.frame[j].ulState = ZR364XX_READ_IDLE;
  cam->buffer.frame[j].cur_size = 0;
 }
 cam->b_acquire = 1;
 return 0;
}
