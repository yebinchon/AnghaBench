
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {unsigned int tx_out; unsigned int tx_in; int tx_lock; scalar_t__ tx_msg_size; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int I2400M_TX_BUF_SIZE ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int d_printf (int,struct device*,char*,size_t) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i2400m_tx_msg_sent(struct i2400m *i2400m)
{
 unsigned n;
 unsigned long flags;
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
 spin_lock_irqsave(&i2400m->tx_lock, flags);
 i2400m->tx_out += i2400m->tx_msg_size;
 d_printf(2, dev, "TX: sent %zu b\n", (size_t) i2400m->tx_msg_size);
 i2400m->tx_msg_size = 0;
 BUG_ON(i2400m->tx_out > i2400m->tx_in);

 n = i2400m->tx_out / I2400M_TX_BUF_SIZE;
 i2400m->tx_out %= I2400M_TX_BUF_SIZE;
 i2400m->tx_in -= n * I2400M_TX_BUF_SIZE;
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);
 d_fnend(3, dev, "(i2400m %p) = void\n", i2400m);
}
