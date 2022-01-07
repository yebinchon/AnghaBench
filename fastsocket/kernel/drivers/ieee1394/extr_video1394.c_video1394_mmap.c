
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file_ctx {TYPE_3__* current_ctx; TYPE_2__* ohci; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_6__ {int dma; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 int KERN_ERR ;
 int PRINT (int ,int ,char*) ;
 int dma_region_mmap (int *,struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int video1394_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct file_ctx *ctx = (struct file_ctx *)file->private_data;

 if (ctx->current_ctx == ((void*)0)) {
  PRINT(KERN_ERR, ctx->ohci->host->id,
    "Current iso context not set");
  return -EINVAL;
 }

 return dma_region_mmap(&ctx->current_ctx->dma, file, vma);
}
