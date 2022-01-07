
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int boot_mode; int rx_reorder; int init_mutex; int msg_completion; int msg_mutex; void* rx_size_min; void* rx_pl_min; int rx_lock; void* tx_size_min; void* tx_pl_min; int tx_lock; int state_wq; int wimax_dev; } ;


 void* UINT_MAX ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int wimax_dev_init (int *) ;

__attribute__((used)) static inline
void i2400m_init(struct i2400m *i2400m)
{
 wimax_dev_init(&i2400m->wimax_dev);

 i2400m->boot_mode = 1;
 i2400m->rx_reorder = 1;
 init_waitqueue_head(&i2400m->state_wq);

 spin_lock_init(&i2400m->tx_lock);
 i2400m->tx_pl_min = UINT_MAX;
 i2400m->tx_size_min = UINT_MAX;

 spin_lock_init(&i2400m->rx_lock);
 i2400m->rx_pl_min = UINT_MAX;
 i2400m->rx_size_min = UINT_MAX;

 mutex_init(&i2400m->msg_mutex);
 init_completion(&i2400m->msg_completion);

 mutex_init(&i2400m->init_mutex);

}
