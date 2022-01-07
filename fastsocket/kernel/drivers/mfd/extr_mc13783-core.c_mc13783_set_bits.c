
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13783 {int io_lock; } ;


 int mc13783_read (struct mc13783*,int,int*) ;
 int mc13783_write (struct mc13783*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mc13783_set_bits(struct mc13783 *mc13783, int reg, u32 mask, u32 val)
{
 u32 tmp;
 int ret;

 mutex_lock(&mc13783->io_lock);

 ret = mc13783_read(mc13783, reg, &tmp);
 tmp = (tmp & ~mask) | val;
 if (ret == 0)
  ret = mc13783_write(mc13783, reg, tmp);

 mutex_unlock(&mc13783->io_lock);

 return ret;
}
