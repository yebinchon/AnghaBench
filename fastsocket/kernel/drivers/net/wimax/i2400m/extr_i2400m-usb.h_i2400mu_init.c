
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct i2400mu {int rx_size_auto_shrink; int do_autopm; scalar_t__ rx_size; int rx_wq; int rx_pending_count; int tx_wq; int urb_edc; int i2400m; } ;


 scalar_t__ PAGE_SIZE ;
 int atomic_set (int *,int) ;
 int edc_init (int *) ;
 int i2400m_init (int *) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline
void i2400mu_init(struct i2400mu *i2400mu)
{
 i2400m_init(&i2400mu->i2400m);
 edc_init(&i2400mu->urb_edc);
 init_waitqueue_head(&i2400mu->tx_wq);
 atomic_set(&i2400mu->rx_pending_count, 0);
 init_waitqueue_head(&i2400mu->rx_wq);
 i2400mu->rx_size = PAGE_SIZE - sizeof(struct skb_shared_info);
 atomic_set(&i2400mu->do_autopm, 1);
 i2400mu->rx_size_auto_shrink = 1;
}
