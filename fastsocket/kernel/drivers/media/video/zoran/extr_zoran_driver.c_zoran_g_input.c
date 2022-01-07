
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {unsigned int input; int resource_lock; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 mutex_lock(&zr->resource_lock);
 *input = zr->input;
 mutex_unlock(&zr->resource_lock);

 return 0;
}
