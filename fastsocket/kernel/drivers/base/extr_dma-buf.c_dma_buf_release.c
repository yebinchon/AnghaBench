
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* release ) (struct dma_buf*) ;} ;


 int EINVAL ;
 int is_dma_buf_file (struct file*) ;
 int kfree (struct dma_buf*) ;
 int stub1 (struct dma_buf*) ;

__attribute__((used)) static int dma_buf_release(struct inode *inode, struct file *file)
{
 struct dma_buf *dmabuf;

 if (!is_dma_buf_file(file))
  return -EINVAL;

 dmabuf = file->private_data;

 dmabuf->ops->release(dmabuf);
 kfree(dmabuf);
 return 0;
}
