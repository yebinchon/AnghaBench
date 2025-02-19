
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_msg_hdr {int size; } ;
struct i2400m {int tx_buf; struct i2400m_msg_hdr* tx_msg; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 int I2400M_TX_PLD_SIZE ;
 struct i2400m_msg_hdr* TAIL_FULL ;
 int d_printf (int,struct device*,char*,...) ;
 struct device* i2400m_dev (struct i2400m*) ;
 struct i2400m_msg_hdr* i2400m_tx_fifo_push (struct i2400m*,int ,int ) ;
 int i2400m_tx_skip_tail (struct i2400m*) ;
 int memset (struct i2400m_msg_hdr*,int ,int ) ;

__attribute__((used)) static
void i2400m_tx_new(struct i2400m *i2400m)
{
 struct device *dev = i2400m_dev(i2400m);
 struct i2400m_msg_hdr *tx_msg;
 BUG_ON(i2400m->tx_msg != ((void*)0));
try_head:
 tx_msg = i2400m_tx_fifo_push(i2400m, I2400M_TX_PLD_SIZE, 0);
 if (tx_msg == ((void*)0))
  goto out;
 else if (tx_msg == TAIL_FULL) {
  i2400m_tx_skip_tail(i2400m);
  d_printf(2, dev, "new TX message: tail full, trying head\n");
  goto try_head;
 }
 memset(tx_msg, 0, I2400M_TX_PLD_SIZE);
 tx_msg->size = I2400M_TX_PLD_SIZE;
out:
 i2400m->tx_msg = tx_msg;
 d_printf(2, dev, "new TX message: %p @%zu\n",
   tx_msg, (void *) tx_msg - i2400m->tx_buf);
}
