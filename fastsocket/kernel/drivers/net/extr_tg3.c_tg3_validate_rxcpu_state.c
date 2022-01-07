
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dev; } ;


 int EBUSY ;
 int EEXIST ;
 int RX_CPU_HWBKPT ;
 int TG3_57766_FW_HANDSHAKE ;
 scalar_t__ TG3_SBROM_IN_SERVICE_LOOP ;
 int netdev_err (int ,char*) ;
 int netdev_warn (int ,char*) ;
 int tg3_read_indirect_reg32 (struct tg3*,int ) ;
 scalar_t__ tr32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_validate_rxcpu_state(struct tg3 *tp)
{
 const int iters = 1000;
 int i;
 u32 val;




 for (i = 0; i < iters; i++) {
  if (tr32(RX_CPU_HWBKPT) == TG3_SBROM_IN_SERVICE_LOOP)
   break;

  udelay(10);
 }

 if (i == iters) {
  netdev_err(tp->dev, "Boot code not ready for service patches\n");
  return -EBUSY;
 }

 val = tg3_read_indirect_reg32(tp, TG3_57766_FW_HANDSHAKE);
 if (val & 0xff) {
  netdev_warn(tp->dev,
       "Other patches exist. Not downloading EEE patch\n");
  return -EEXIST;
 }

 return 0;
}
