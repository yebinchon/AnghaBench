
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t len; scalar_t__ data; } ;
struct i2400m_msg_hdr {int * pld; int num_pls; } ;
struct i2400m {int rx_pl_num; int rx_pl_max; int rx_pl_min; size_t rx_size_acc; size_t rx_size_min; size_t rx_size_max; int rx_lock; int rx_num; } ;
struct device {int dummy; } ;


 size_t ALIGN (size_t,int ) ;
 int EIO ;
 int I2400M_PL_ALIGN ;
 int cond_resched () ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct sk_buff*,size_t,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct sk_buff*,size_t) ;
 int dev_err (struct device*,char*,size_t,unsigned int,int,size_t) ;
 struct device* i2400m_dev (struct i2400m*) ;
 size_t i2400m_pld_size (int *) ;
 int i2400m_rx_msg_hdr_check (struct i2400m*,struct i2400m_msg_hdr const*,size_t) ;
 int i2400m_rx_payload (struct i2400m*,struct sk_buff*,unsigned int,int *,scalar_t__) ;
 int i2400m_rx_pl_descr_check (struct i2400m*,int *,size_t,size_t) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int i2400m_rx(struct i2400m *i2400m, struct sk_buff *skb)
{
 int i, result;
 struct device *dev = i2400m_dev(i2400m);
 const struct i2400m_msg_hdr *msg_hdr;
 size_t pl_itr, pl_size, skb_len;
 unsigned long flags;
 unsigned num_pls, single_last;

 skb_len = skb->len;
 d_fnstart(4, dev, "(i2400m %p skb %p [size %zu])\n",
    i2400m, skb, skb_len);
 result = -EIO;
 msg_hdr = (void *) skb->data;
 result = i2400m_rx_msg_hdr_check(i2400m, msg_hdr, skb->len);
 if (result < 0)
  goto error_msg_hdr_check;
 result = -EIO;
 num_pls = le16_to_cpu(msg_hdr->num_pls);
 pl_itr = sizeof(*msg_hdr) +
  num_pls * sizeof(msg_hdr->pld[0]);
 pl_itr = ALIGN(pl_itr, I2400M_PL_ALIGN);
 if (pl_itr > skb->len) {
  dev_err(dev, "RX: HW BUG? message too short (%u bytes) for "
   "%u payload descriptors (%zu each, total %zu)\n",
   skb->len, num_pls, sizeof(msg_hdr->pld[0]), pl_itr);
  goto error_pl_descr_short;
 }

 for (i = 0; i < num_pls; i++) {

  pl_size = i2400m_pld_size(&msg_hdr->pld[i]);
  result = i2400m_rx_pl_descr_check(i2400m, &msg_hdr->pld[i],
        pl_itr, skb->len);
  if (result < 0)
   goto error_pl_descr_check;
  single_last = num_pls == 1 || i == num_pls - 1;
  i2400m_rx_payload(i2400m, skb, single_last, &msg_hdr->pld[i],
      skb->data + pl_itr);
  pl_itr += ALIGN(pl_size, I2400M_PL_ALIGN);
  cond_resched();
 }
 kfree_skb(skb);

 spin_lock_irqsave(&i2400m->rx_lock, flags);
 i2400m->rx_pl_num += i;
 if (i > i2400m->rx_pl_max)
  i2400m->rx_pl_max = i;
 if (i < i2400m->rx_pl_min)
  i2400m->rx_pl_min = i;
 i2400m->rx_num++;
 i2400m->rx_size_acc += skb->len;
 if (skb->len < i2400m->rx_size_min)
  i2400m->rx_size_min = skb->len;
 if (skb->len > i2400m->rx_size_max)
  i2400m->rx_size_max = skb->len;
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
error_pl_descr_check:
error_pl_descr_short:
error_msg_hdr_check:
 d_fnend(4, dev, "(i2400m %p skb %p [size %zu]) = %d\n",
  i2400m, skb, skb_len, result);
 return result;
}
