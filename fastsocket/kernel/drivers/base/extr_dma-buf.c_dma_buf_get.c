
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dma_buf* private_data; } ;
struct dma_buf {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 struct dma_buf* ERR_PTR (int ) ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 int is_dma_buf_file (struct file*) ;

struct dma_buf *dma_buf_get(int fd)
{
 struct file *file;

 file = fget(fd);

 if (!file)
  return ERR_PTR(-EBADF);

 if (!is_dma_buf_file(file)) {
  fput(file);
  return ERR_PTR(-EINVAL);
 }

 return file->private_data;
}
