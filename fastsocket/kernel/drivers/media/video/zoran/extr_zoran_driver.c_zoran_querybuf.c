
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct v4l2_buffer {int index; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zoran_v4l2_buffer_status (struct zoran_fh*,struct v4l2_buffer*,int ) ;

__attribute__((used)) static int zoran_querybuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 int res;

 mutex_lock(&zr->resource_lock);
 res = zoran_v4l2_buffer_status(fh, buf, buf->index);
 mutex_unlock(&zr->resource_lock);

 return res;
}
