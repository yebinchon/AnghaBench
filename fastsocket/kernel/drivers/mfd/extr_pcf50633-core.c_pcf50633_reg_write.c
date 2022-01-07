
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int lock; } ;


 int __pcf50633_write (struct pcf50633*,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pcf50633_reg_write(struct pcf50633 *pcf, u8 reg, u8 val)
{
 int ret;

 mutex_lock(&pcf->lock);
 ret = __pcf50633_write(pcf, reg, 1, &val);
 mutex_unlock(&pcf->lock);

 return ret;
}
