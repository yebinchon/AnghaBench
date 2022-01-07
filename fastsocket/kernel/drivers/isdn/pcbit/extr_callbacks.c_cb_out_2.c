
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ushort ;
struct sk_buff {int dummy; } ;
struct pcbit_dev {TYPE_1__* dev_if; int id; } ;
struct pcbit_chan {void* s_refnum; int id; } ;
struct callb_data {int dummy; } ;
struct TYPE_5__ {int arg; int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;


 int ISDN_STAT_DCONN ;
 int MSG_CONN_ACTV_RESP ;
 int MSG_SELP_REQ ;
 int capi_conn_active_resp (struct pcbit_chan*,struct sk_buff**) ;
 int capi_select_proto_req (struct pcbit_chan*,struct sk_buff**,int) ;
 int last_ref_num ;
 int pcbit_l2_write (struct pcbit_dev*,int ,void*,struct sk_buff*,int) ;
 int printk (char*) ;
 int stub1 (TYPE_2__*) ;

void cb_out_2(struct pcbit_dev * dev, struct pcbit_chan* chan,
       struct callb_data *data)
{
        isdn_ctrl ictl;
  struct sk_buff *skb;
 int len;
        ushort refnum;

        if ((len=capi_conn_active_resp(chan, &skb)) < 0)
        {
                printk("capi_conn_active_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        pcbit_l2_write(dev, MSG_CONN_ACTV_RESP, refnum, skb, len);


        ictl.command = ISDN_STAT_DCONN;
        ictl.driver=dev->id;
        ictl.arg=chan->id;
        dev->dev_if->statcallb(&ictl);





        if ((len=capi_select_proto_req(chan, &skb, 1 )) < 0) {
                printk("capi_select_proto_req failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        pcbit_l2_write(dev, MSG_SELP_REQ, refnum, skb, len);
}
