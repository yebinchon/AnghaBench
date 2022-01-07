
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zatm_dev {TYPE_1__* pool_info; int ** last_free; int lock; scalar_t__ pool_base; int * pool; } ;
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int low_water; int ref_count; } ;


 int DPRINTK (char*,int,int ) ;
 int ZATM_AAL5_POOL_BASE ;
 struct zatm_dev* ZATM_DEV (struct atm_dev*) ;
 scalar_t__ dummy ;
 int refill_pool (struct atm_dev*,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uPD98401_RXFP_ALERT_SHIFT ;
 int uPD98401_RXFP_BFSZ_SHIFT ;
 int uPD98401_RXFP_BTSZ_SHIFT ;
 int zpokel (struct zatm_dev*,unsigned long,scalar_t__) ;

__attribute__((used)) static void use_pool(struct atm_dev *dev,int pool)
{
 struct zatm_dev *zatm_dev;
 unsigned long flags;
 int size;

 zatm_dev = ZATM_DEV(dev);
 if (!(zatm_dev->pool_info[pool].ref_count++)) {
  skb_queue_head_init(&zatm_dev->pool[pool]);
  size = pool-ZATM_AAL5_POOL_BASE;
  if (size < 0) size = 0;
  else if (size > 10) size = 10;
  spin_lock_irqsave(&zatm_dev->lock, flags);
  zpokel(zatm_dev,((zatm_dev->pool_info[pool].low_water/4) <<
      uPD98401_RXFP_ALERT_SHIFT) |
      (1 << uPD98401_RXFP_BTSZ_SHIFT) |
      (size << uPD98401_RXFP_BFSZ_SHIFT),
      zatm_dev->pool_base+pool*2);
  zpokel(zatm_dev,(unsigned long) dummy,zatm_dev->pool_base+
      pool*2+1);
  spin_unlock_irqrestore(&zatm_dev->lock, flags);
  zatm_dev->last_free[pool] = ((void*)0);
  refill_pool(dev,pool);
 }
 DPRINTK("pool %d: %d\n",pool,zatm_dev->pool_info[pool].ref_count);
}
