
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_timer_priv {int base; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; int crystal; } ;


 int NV04_PTIMER_DENOMINATOR ;
 int NV04_PTIMER_INTR_0 ;
 int NV04_PTIMER_INTR_EN_0 ;
 int NV04_PTIMER_NUMERATOR ;
 int PLL_CORE ;
 int nouveau_hw_get_clock (struct nouveau_device*,int ) ;
 int nouveau_timer_init (int *) ;
 int nv_debug (struct nv04_timer_priv*,char*,int) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_rd32 (struct nv04_timer_priv*,int) ;
 int nv_warn (struct nv04_timer_priv*,char*) ;
 int nv_wr32 (struct nv04_timer_priv*,int,int) ;

__attribute__((used)) static int
nv04_timer_init(struct nouveau_object *object)
{
 struct nouveau_device *device = nv_device(object);
 struct nv04_timer_priv *priv = (void *)object;
 u32 m = 1, f, n, d;
 int ret;

 ret = nouveau_timer_init(&priv->base);
 if (ret)
  return ret;


 d = 1000000 / 32;







 if (device->chipset <= 0x40) {

  f = -1;
  n = 0;
 } else {
  f = device->crystal;
  n = f;
  while (n < (d * 2)) {
   n += (n / m);
   m++;
  }

  nv_wr32(priv, 0x009220, m - 1);
 }

 if (!n) {
  nv_warn(priv, "unknown input clock freq\n");
  if (!nv_rd32(priv, NV04_PTIMER_NUMERATOR) ||
      !nv_rd32(priv, NV04_PTIMER_DENOMINATOR)) {
   nv_wr32(priv, NV04_PTIMER_NUMERATOR, 1);
   nv_wr32(priv, NV04_PTIMER_DENOMINATOR, 1);
  }
  return 0;
 }


 while (((n % 5) == 0) && ((d % 5) == 0)) {
  n /= 5;
  d /= 5;
 }

 while (((n % 2) == 0) && ((d % 2) == 0)) {
  n /= 2;
  d /= 2;
 }

 while (n > 0xffff || d > 0xffff) {
  n >>= 1;
  d >>= 1;
 }

 nv_debug(priv, "input frequency : %dHz\n", f);
 nv_debug(priv, "input multiplier: %d\n", m);
 nv_debug(priv, "numerator       : 0x%08x\n", n);
 nv_debug(priv, "denominator     : 0x%08x\n", d);
 nv_debug(priv, "timer frequency : %dHz\n", (f * m) * d / n);

 nv_wr32(priv, NV04_PTIMER_NUMERATOR, n);
 nv_wr32(priv, NV04_PTIMER_DENOMINATOR, d);
 nv_wr32(priv, NV04_PTIMER_INTR_0, 0xffffffff);
 nv_wr32(priv, NV04_PTIMER_INTR_EN_0, 0x00000000);
 return 0;
}
