
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_l3l4_hdr {int status; int type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef int strerr ;



 int d_printf (int,struct device*,char*,size_t) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_msg_check_status (struct i2400m_l3l4_hdr const*,char*,int) ;
 unsigned int le16_to_cpu (int ) ;

void i2400m_msg_ack_hook(struct i2400m *i2400m,
    const struct i2400m_l3l4_hdr *l3l4_hdr, size_t size)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 unsigned ack_type, ack_status;
 char strerr[32];



 ack_type = le16_to_cpu(l3l4_hdr->type);
 ack_status = le16_to_cpu(l3l4_hdr->status);
 switch (ack_type) {
 case 128:


  if (0) {
   result = i2400m_msg_check_status(
    l3l4_hdr, strerr, sizeof(strerr));
   if (result >= 0)
    d_printf(1, dev, "ready for power save: %zd\n",
      size);
  }
  break;
 };
 return;
}
