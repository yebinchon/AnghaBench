
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_overlay (struct zoran_fh*,unsigned int) ;

__attribute__((used)) static int zoran_overlay(struct file *file, void *__fh, unsigned int on)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 int res;

 mutex_lock(&zr->resource_lock);
 res = setup_overlay(fh, on);
 mutex_unlock(&zr->resource_lock);

 return res;
}
