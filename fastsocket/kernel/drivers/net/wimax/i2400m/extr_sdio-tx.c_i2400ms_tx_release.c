
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400ms {int tx_workqueue; } ;


 int destroy_workqueue (int ) ;

void i2400ms_tx_release(struct i2400ms *i2400ms)
{
 destroy_workqueue(i2400ms->tx_workqueue);
}
