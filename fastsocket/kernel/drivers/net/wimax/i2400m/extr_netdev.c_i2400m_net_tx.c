
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct net_device {int trans_start; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int I2400M_PT_DATA ;
 int d_dump (int,struct device*,int ,int ) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct net_device*,struct sk_buff*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct net_device*,struct sk_buff*) ;
 int d_printf (int,struct device*,char*,struct sk_buff*,int ) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_tx (struct i2400m*,int ,int ,int ) ;
 int i2400m_tx_prep_header (struct sk_buff*) ;
 int jiffies ;

__attribute__((used)) static
int i2400m_net_tx(struct i2400m *i2400m, struct net_device *net_dev,
    struct sk_buff *skb)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p net_dev %p skb %p)\n",
    i2400m, net_dev, skb);

 net_dev->trans_start = jiffies;
 i2400m_tx_prep_header(skb);
 d_printf(3, dev, "NETTX: skb %p sending %d bytes to radio\n",
   skb, skb->len);
 d_dump(4, dev, skb->data, skb->len);
 result = i2400m_tx(i2400m, skb->data, skb->len, I2400M_PT_DATA);
 d_fnend(3, dev, "(i2400m %p net_dev %p skb %p) = %d\n",
  i2400m, net_dev, skb, result);
 return result;
}
