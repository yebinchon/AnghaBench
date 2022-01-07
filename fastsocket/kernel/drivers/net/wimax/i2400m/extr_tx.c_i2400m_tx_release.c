
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int tx_buf; } ;


 int kfree (int ) ;

void i2400m_tx_release(struct i2400m *i2400m)
{
 kfree(i2400m->tx_buf);
}
