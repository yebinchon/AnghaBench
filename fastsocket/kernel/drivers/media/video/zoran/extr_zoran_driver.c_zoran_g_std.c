
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; int norm; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 mutex_lock(&zr->resource_lock);
 *std = zr->norm;
 mutex_unlock(&zr->resource_lock);
 return 0;
}
