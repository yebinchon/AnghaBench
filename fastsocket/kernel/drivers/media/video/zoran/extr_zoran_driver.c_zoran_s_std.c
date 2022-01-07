
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_grab_pending (struct zoran*) ;
 int zoran_set_norm (struct zoran*,int ) ;

__attribute__((used)) static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id *std)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 int res = 0;

 mutex_lock(&zr->resource_lock);
 res = zoran_set_norm(zr, *std);
 if (res)
  goto sstd_unlock_and_return;

 res = wait_grab_pending(zr);
sstd_unlock_and_return:
 mutex_unlock(&zr->resource_lock);
 return res;
}
