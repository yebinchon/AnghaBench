
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {unsigned long tx_tail; int id; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned long HV_EWOULDBLOCK ;
 unsigned long sun4v_ldc_tx_set_qtail (int ,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int set_tx_tail(struct ldc_channel *lp, unsigned long tail)
{
 unsigned long orig_tail = lp->tx_tail;
 int limit = 1000;

 lp->tx_tail = tail;
 while (limit-- > 0) {
  unsigned long err;

  err = sun4v_ldc_tx_set_qtail(lp->id, tail);
  if (!err)
   return 0;

  if (err != HV_EWOULDBLOCK) {
   lp->tx_tail = orig_tail;
   return -EINVAL;
  }
  udelay(1);
 }

 lp->tx_tail = orig_tail;
 return -EBUSY;
}
