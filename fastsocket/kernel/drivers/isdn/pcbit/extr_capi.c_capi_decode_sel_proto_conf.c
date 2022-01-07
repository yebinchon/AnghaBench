
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct sk_buff {int * data; } ;
struct pcbit_chan {int layer2link; } ;


 int skb_pull (struct sk_buff*,int) ;

int capi_decode_sel_proto_conf(struct pcbit_chan *chan, struct sk_buff *skb)
{
        ushort errcode;

        chan->layer2link = *(skb->data);
        skb_pull(skb, 1);

        errcode = *((ushort*) skb->data);
        skb_pull(skb, 2);

        return errcode;
}
