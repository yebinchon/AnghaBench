
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc13783 {int io_lock; } ;


 int mc13783_read (struct mc13783*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mc13783_reg_read(struct mc13783 *mc13783, int reg_num, u32 *reg_val)
{
 int ret;

 mutex_lock(&mc13783->io_lock);
 ret = mc13783_read(mc13783, reg_num, reg_val);
 mutex_unlock(&mc13783->io_lock);

 return ret;
}
