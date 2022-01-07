
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int lock; } ;


 int __pcf50633_read (struct pcf50633*,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u8 pcf50633_reg_read(struct pcf50633 *pcf, u8 reg)
{
 u8 val;

 mutex_lock(&pcf->lock);
 __pcf50633_read(pcf, reg, 1, &val);
 mutex_unlock(&pcf->lock);

 return val;
}
