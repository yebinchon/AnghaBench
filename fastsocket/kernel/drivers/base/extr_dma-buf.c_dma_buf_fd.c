
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int file; } ;


 int EINVAL ;
 int fd_install (int,int ) ;
 int get_unused_fd_flags (int) ;

int dma_buf_fd(struct dma_buf *dmabuf, int flags)
{
 int error, fd;

 if (!dmabuf || !dmabuf->file)
  return -EINVAL;

 error = get_unused_fd_flags(flags);
 if (error < 0)
  return error;
 fd = error;

 fd_install(fd, dmabuf->file);

 return fd;
}
