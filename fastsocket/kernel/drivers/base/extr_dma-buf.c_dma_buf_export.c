
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dma_buf_ops {int mmap; int kmap; int kmap_atomic; int release; int unmap_dma_buf; int map_dma_buf; } ;
struct dma_buf {size_t size; int attachments; int lock; struct file* file; struct dma_buf_ops const* ops; void* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 struct dma_buf* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 struct file* anon_inode_getfile (char*,int *,struct dma_buf*,int) ;
 int dma_buf_fops ;
 struct dma_buf* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct dma_buf *dma_buf_export(void *priv, const struct dma_buf_ops *ops,
    size_t size, int flags)
{
 struct dma_buf *dmabuf;
 struct file *file;

 if (WARN_ON(!priv || !ops
     || !ops->map_dma_buf
     || !ops->unmap_dma_buf
     || !ops->release
     || !ops->kmap_atomic
     || !ops->kmap
     || !ops->mmap)) {
  return ERR_PTR(-EINVAL);
 }

 dmabuf = kzalloc(sizeof(struct dma_buf), GFP_KERNEL);
 if (dmabuf == ((void*)0))
  return ERR_PTR(-ENOMEM);

 dmabuf->priv = priv;
 dmabuf->ops = ops;
 dmabuf->size = size;

 file = anon_inode_getfile("dmabuf", &dma_buf_fops, dmabuf, flags);

 dmabuf->file = file;

 mutex_init(&dmabuf->lock);
 INIT_LIST_HEAD(&dmabuf->attachments);

 return dmabuf;
}
