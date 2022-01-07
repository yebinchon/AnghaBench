
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct port_buffer {int sgpages; size_t size; scalar_t__ offset; scalar_t__ len; int * buf; } ;


 int GFP_KERNEL ;
 int kfree (struct port_buffer*) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static struct port_buffer *alloc_buf(struct virtqueue *vq, size_t buf_size,
         int pages)
{
 struct port_buffer *buf;





 buf = kmalloc(sizeof(*buf) + sizeof(struct scatterlist) * pages,
        GFP_KERNEL);
 if (!buf)
  goto fail;

 buf->sgpages = pages;
 if (pages > 0) {
  buf->buf = ((void*)0);
  return buf;
 }

 buf->buf = kmalloc(buf_size, GFP_KERNEL);
 if (!buf->buf)
  goto free_buf;
 buf->len = 0;
 buf->offset = 0;
 buf->size = buf_size;
 return buf;

free_buf:
 kfree(buf);
fail:
 return ((void*)0);
}
