
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400mu {int rx_kthread; } ;


 int kthread_stop (int ) ;

void i2400mu_rx_release(struct i2400mu *i2400mu)
{
 kthread_stop(i2400mu->rx_kthread);
}
