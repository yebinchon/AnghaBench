
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_5__ {int smem_len; int smem_start; } ;
struct TYPE_6__ {TYPE_2__ fix; int screen_base; } ;
struct clcd_fb {TYPE_3__ fb; TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int dma_mmap_writecombine (int *,struct vm_area_struct*,int ,int ,int ) ;

__attribute__((used)) static int realview_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
{
 return dma_mmap_writecombine(&fb->dev->dev, vma,
         fb->fb.screen_base,
         fb->fb.fix.smem_start,
         fb->fb.fix.smem_len);
}
