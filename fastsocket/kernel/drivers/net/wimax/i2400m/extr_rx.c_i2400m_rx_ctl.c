
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m_report_hook_args {size_t size; struct i2400m_l3l4_hdr const* l3l4_hdr; struct sk_buff* skb_rx; } ;
struct i2400m_l3l4_hdr {int type; } ;
struct i2400m {scalar_t__ ready; int trace_msg_from_user; int wimax_dev; } ;
struct device {int dummy; } ;
typedef int args ;


 int GFP_KERNEL ;
 unsigned int I2400M_MT_REPORT_MASK ;
 int d_dump (int,struct device*,struct i2400m_l3l4_hdr const*,size_t) ;
 int d_printf (int,struct device*,char*,char*,unsigned int,size_t) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_msg_size_check (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ;
 int i2400m_queue_work (struct i2400m*,int ,int ,struct i2400m_report_hook_args*,int) ;
 int i2400m_report_hook_work ;
 int i2400m_rx_ctl_ack (struct i2400m*,void const*,size_t) ;
 unsigned int le16_to_cpu (int ) ;
 int skb_get (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int wimax_msg (int *,char*,struct i2400m_l3l4_hdr const*,size_t,int ) ;

__attribute__((used)) static
void i2400m_rx_ctl(struct i2400m *i2400m, struct sk_buff *skb_rx,
     const void *payload, size_t size)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 const struct i2400m_l3l4_hdr *l3l4_hdr = payload;
 unsigned msg_type;

 result = i2400m_msg_size_check(i2400m, l3l4_hdr, size);
 if (result < 0) {
  dev_err(dev, "HW BUG? device sent a bad message: %d\n",
   result);
  goto error_check;
 }
 msg_type = le16_to_cpu(l3l4_hdr->type);
 d_printf(1, dev, "%s 0x%04x: %zu bytes\n",
   msg_type & I2400M_MT_REPORT_MASK ? "REPORT" : "CMD/SET/GET",
   msg_type, size);
 d_dump(2, dev, l3l4_hdr, size);
 if (msg_type & I2400M_MT_REPORT_MASK) {





  struct i2400m_report_hook_args args = {
   .skb_rx = skb_rx,
   .l3l4_hdr = l3l4_hdr,
   .size = size
  };
  if (unlikely(i2400m->ready == 0))
   return;
  skb_get(skb_rx);
  i2400m_queue_work(i2400m, i2400m_report_hook_work,
      GFP_KERNEL, &args, sizeof(args));
  if (unlikely(i2400m->trace_msg_from_user))
   wimax_msg(&i2400m->wimax_dev, "echo",
      l3l4_hdr, size, GFP_KERNEL);
  result = wimax_msg(&i2400m->wimax_dev, ((void*)0), l3l4_hdr, size,
       GFP_KERNEL);
  if (result < 0)
   dev_err(dev, "error sending report to userspace: %d\n",
    result);
 } else
  i2400m_rx_ctl_ack(i2400m, payload, size);
error_check:
 return;
}
