
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ushort ;
struct sk_buff {int dummy; } ;
struct pcbit_dev {TYPE_1__* dev_if; int id; } ;
struct pcbit_chan {int s_refnum; int id; } ;
struct callb_data {int dummy; } ;
struct TYPE_5__ {int arg; int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;


 int ISDN_STAT_BHUP ;
 int MSG_DISC_RESP ;
 int capi_disc_resp (struct pcbit_chan*,struct sk_buff**) ;
 int last_ref_num ;
 int pcbit_l2_write (struct pcbit_dev*,int ,int,struct sk_buff*,int) ;
 int printk (char*) ;
 int stub1 (TYPE_2__*) ;

void cb_disc_1(struct pcbit_dev * dev, struct pcbit_chan* chan,
        struct callb_data *data)
{
  struct sk_buff *skb;
 int len;
        ushort refnum;
        isdn_ctrl ictl;

        if ((len = capi_disc_resp(chan, &skb)) < 0) {
                printk("capi_disc_resp failed\n");
                return;
        }

        refnum = last_ref_num++ & 0x7fffU;
        chan->s_refnum = refnum;

        pcbit_l2_write(dev, MSG_DISC_RESP, refnum, skb, len);

        ictl.command = ISDN_STAT_BHUP;
        ictl.driver=dev->id;
        ictl.arg=chan->id;
        dev->dev_if->statcallb(&ictl);
}
