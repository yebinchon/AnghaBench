
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int* mask_regs; int lock; } ;


 int PCF50633_REG_INT1M ;
 int __pcf50633_read (struct pcf50633*,int,int,int*) ;
 int __pcf50633_write (struct pcf50633*,int,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __pcf50633_irq_mask_set(struct pcf50633 *pcf, int irq, u8 mask)
{
 u8 reg, bits, tmp;
 int ret = 0, idx;

 idx = irq >> 3;
 reg = PCF50633_REG_INT1M + idx;
 bits = 1 << (irq & 0x07);

 mutex_lock(&pcf->lock);

 if (mask) {
  ret = __pcf50633_read(pcf, reg, 1, &tmp);
  if (ret < 0)
   goto out;

  tmp |= bits;

  ret = __pcf50633_write(pcf, reg, 1, &tmp);
  if (ret < 0)
   goto out;

  pcf->mask_regs[idx] &= ~bits;
  pcf->mask_regs[idx] |= bits;
 } else {
  ret = __pcf50633_read(pcf, reg, 1, &tmp);
  if (ret < 0)
   goto out;

  tmp &= ~bits;

  ret = __pcf50633_write(pcf, reg, 1, &tmp);
  if (ret < 0)
   goto out;

  pcf->mask_regs[idx] &= ~bits;
 }
out:
 mutex_unlock(&pcf->lock);

 return ret;
}
