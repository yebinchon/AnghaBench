
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int v16 ;
typedef int u32 ;
typedef int u16 ;
struct zd_chip {int dummy; } ;
typedef int a16 ;


 int BUG_ON (int) ;
 int EINVAL ;
 int USB_MAX_IOREAD32_COUNT ;
 int dev_dbg_f (int ,char*,int) ;
 int inc_addr (int const) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread16v_locked (struct zd_chip*,int*,int *,unsigned int) ;

int zd_ioread32v_locked(struct zd_chip *chip, u32 *values, const zd_addr_t *addr,
   unsigned int count)
{
 int r;
 int i;
 zd_addr_t a16[USB_MAX_IOREAD32_COUNT * 2];
 u16 v16[USB_MAX_IOREAD32_COUNT * 2];
 unsigned int count16;

 if (count > USB_MAX_IOREAD32_COUNT)
  return -EINVAL;


 count16 = 2 * count;
 BUG_ON(count16 * sizeof(zd_addr_t) > sizeof(a16));
 BUG_ON(count16 * sizeof(u16) > sizeof(v16));

 for (i = 0; i < count; i++) {
  int j = 2*i;

  a16[j] = inc_addr(addr[i]);
  a16[j+1] = addr[i];
 }

 r = zd_ioread16v_locked(chip, v16, a16, count16);
 if (r) {
  dev_dbg_f(zd_chip_dev(chip),
     "error: zd_ioread16v_locked. Error number %d\n", r);
  return r;
 }

 for (i = 0; i < count; i++) {
  int j = 2*i;
  values[i] = (v16[j] << 16) | v16[j+1];
 }

 return 0;
}
