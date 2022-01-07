
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int lock; } ;


 int __pcf50633_read (struct pcf50633*,int ,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pcf50633_read_block(struct pcf50633 *pcf, u8 reg,
     int nr_regs, u8 *data)
{
 int ret;

 mutex_lock(&pcf->lock);
 ret = __pcf50633_read(pcf, reg, nr_regs, data);
 mutex_unlock(&pcf->lock);

 return ret;
}
