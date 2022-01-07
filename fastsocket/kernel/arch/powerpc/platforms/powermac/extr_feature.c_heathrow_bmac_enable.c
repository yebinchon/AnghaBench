
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;


 long ENODEV ;
 int HEATHROW_FCR ;
 int HRW_BMAC_IO_ENABLE ;
 int HRW_BMAC_RESET ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int ,int ) ;
 int MACIO_BIS (int ,int ) ;
 int MACIO_IN32 (int ) ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 int mdelay (int) ;

__attribute__((used)) static long heathrow_bmac_enable(struct device_node *node, long param,
     long value)
{
 struct macio_chip* macio;
 unsigned long flags;

 macio = macio_find(node, 0);
 if (!macio)
  return -ENODEV;
 if (value) {
  LOCK(flags);
  MACIO_BIS(HEATHROW_FCR, HRW_BMAC_IO_ENABLE);
  MACIO_BIS(HEATHROW_FCR, HRW_BMAC_RESET);
  UNLOCK(flags);
  (void)MACIO_IN32(HEATHROW_FCR);
  mdelay(10);
  LOCK(flags);
  MACIO_BIC(HEATHROW_FCR, HRW_BMAC_RESET);
  UNLOCK(flags);
  (void)MACIO_IN32(HEATHROW_FCR);
  mdelay(10);
 } else {
  LOCK(flags);
  MACIO_BIC(HEATHROW_FCR, HRW_BMAC_IO_ENABLE);
  UNLOCK(flags);
 }
 return 0;
}
