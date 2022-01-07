
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int smem_start; int smem_len; } ;
struct TYPE_6__ {TYPE_2__ fix; int screen_base; } ;
struct clcd_fb {TYPE_3__ fb; TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int dma_free_writecombine (int *,int ,int ,int ) ;

__attribute__((used)) static void aaec2000_clcd_remove(struct clcd_fb *fb)
{
 dma_free_writecombine(&fb->dev->dev, fb->fb.fix.smem_len,
   fb->fb.screen_base, fb->fb.fix.smem_start);
}
