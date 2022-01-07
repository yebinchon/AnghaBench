
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {scalar_t__ write32_tx_mbox; int dev; } ;


 int BUG_ON (int) ;
 int MBOX_WRITE_REORDER ;
 int TX_RECOVERY_PENDING ;
 int netdev_warn (int ,char*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 scalar_t__ tg3_write_indirect_mbox ;

__attribute__((used)) static void tg3_tx_recover(struct tg3 *tp)
{
 BUG_ON(tg3_flag(tp, MBOX_WRITE_REORDER) ||
        tp->write32_tx_mbox == tg3_write_indirect_mbox);

 netdev_warn(tp->dev,
      "The system may be re-ordering memory-mapped I/O "
      "cycles to the network device, attempting to recover. "
      "Please report the problem to the driver maintainer "
      "and include system chipset information.\n");

 tg3_flag_set(tp, TX_RECOVERY_PENDING);
}
