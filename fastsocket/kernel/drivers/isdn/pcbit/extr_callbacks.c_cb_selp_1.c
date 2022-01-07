
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct sk_buff {int dummy; } ;
struct pcbit_dev {int dummy; } ;
struct pcbit_chan {int s_refnum; } ;
struct callb_data {int dummy; } ;


 int MSG_ACT_TRANSP_REQ ;
 int capi_activate_transp_req (struct pcbit_chan*,struct sk_buff**) ;
 int last_ref_num ;
 int pcbit_l2_write (struct pcbit_dev*,int ,int,struct sk_buff*,int) ;
 int printk (char*) ;

void cb_selp_1(struct pcbit_dev * dev, struct pcbit_chan* chan,
        struct callb_data *data)
{
  struct sk_buff *skb;
 int len;
        ushort refnum;

        if ((len = capi_activate_transp_req(chan, &skb)) < 0)
        {
                printk("capi_conn_activate_transp_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        pcbit_l2_write(dev, MSG_ACT_TRANSP_REQ, refnum, skb, len);
}
