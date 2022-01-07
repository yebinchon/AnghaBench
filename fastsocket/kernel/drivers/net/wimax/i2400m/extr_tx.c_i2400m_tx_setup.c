
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {scalar_t__ bus_tx_block_size; int * tx_buf; scalar_t__ tx_sequence; int wake_tx_ws; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2400M_TX_BUF_SIZE ;
 int INIT_WORK (int *,int ) ;
 int i2400m_wake_tx_work ;
 int * kmalloc (int ,int ) ;

int i2400m_tx_setup(struct i2400m *i2400m)
{
 int result;




 INIT_WORK(&i2400m->wake_tx_ws, i2400m_wake_tx_work);

 i2400m->tx_sequence = 0;
 i2400m->tx_buf = kmalloc(I2400M_TX_BUF_SIZE, GFP_KERNEL);
 if (i2400m->tx_buf == ((void*)0))
  result = -ENOMEM;
 else
  result = 0;

 BUG_ON(i2400m->bus_tx_block_size == 0);
 return result;

}
