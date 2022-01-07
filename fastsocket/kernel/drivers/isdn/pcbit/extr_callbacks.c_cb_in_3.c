
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcbit_dev {int dummy; } ;
struct pcbit_chan {unsigned short s_refnum; } ;
struct callb_data {int dummy; } ;


 int MSG_SELP_REQ ;
 int capi_select_proto_req (struct pcbit_chan*,struct sk_buff**,int ) ;
 int last_ref_num ;
 int pcbit_l2_write (struct pcbit_dev*,int ,unsigned short,struct sk_buff*,int) ;
 int printk (char*) ;

void cb_in_3(struct pcbit_dev * dev, struct pcbit_chan* chan,
      struct callb_data *data)
{
        unsigned short refnum;
  struct sk_buff *skb;
 int len;

        if ((len = capi_select_proto_req(chan, &skb, 0 )) < 0)
        {
                printk("capi_select_proto_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        pcbit_l2_write(dev, MSG_SELP_REQ, refnum, skb, len);

}
