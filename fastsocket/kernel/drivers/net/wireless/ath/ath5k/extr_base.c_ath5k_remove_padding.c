
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;


 int ath5k_common_padpos (struct sk_buff*) ;
 int memmove (int ,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath5k_remove_padding(struct sk_buff *skb)
{
 int padpos = ath5k_common_padpos(skb);
 int padsize = padpos & 3;

 if (padsize && skb->len >= padpos + padsize) {
  memmove(skb->data + padsize, skb->data, padpos);
  skb_pull(skb, padsize);
  return padsize;
 }

 return 0;
}
