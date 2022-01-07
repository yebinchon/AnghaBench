
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_grab_pending (struct zoran*) ;
 int zoran_set_input (struct zoran*,unsigned int) ;

__attribute__((used)) static int zoran_s_input(struct file *file, void *__fh, unsigned int input)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 int res;

 mutex_lock(&zr->resource_lock);
 res = zoran_set_input(zr, input);
 if (res)
  goto sinput_unlock_and_return;


 res = wait_grab_pending(zr);
sinput_unlock_and_return:
 mutex_unlock(&zr->resource_lock);
 return res;
}
