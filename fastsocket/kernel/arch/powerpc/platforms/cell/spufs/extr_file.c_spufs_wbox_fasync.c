
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int wbox_fasync; } ;
struct file {struct spu_context* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int spufs_wbox_fasync(int fd, struct file *file, int on)
{
 struct spu_context *ctx = file->private_data;
 int ret;

 ret = fasync_helper(fd, file, on, &ctx->wbox_fasync);

 return ret;
}
