
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct sk_buff {scalar_t__ data; } ;
struct pcbit_chan {int dummy; } ;


 int skb_pull (struct sk_buff*,int) ;

int capi_decode_conn_actv_conf(struct pcbit_chan * chan, struct sk_buff *skb)
{
        ushort errcode;

        errcode = *((ushort*) skb->data);
        skb_pull(skb, 2);




        return errcode;
}
