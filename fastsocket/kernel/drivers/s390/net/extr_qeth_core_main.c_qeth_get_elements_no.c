
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 int QETH_MAX_BUFFER_ELEMENTS (struct qeth_card*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int qeth_get_elements_no(struct qeth_card *card, void *hdr,
       struct sk_buff *skb, int elems)
{
 int elements_needed = 0;

 if (skb_shinfo(skb)->nr_frags > 0)
  elements_needed = (skb_shinfo(skb)->nr_frags + 1);
 if (elements_needed == 0)
  elements_needed = 1 + (((((unsigned long) skb->data) %
    PAGE_SIZE) + skb->len) >> PAGE_SHIFT);
 if ((elements_needed + elems) > QETH_MAX_BUFFER_ELEMENTS(card)) {
  QETH_DBF_MESSAGE(2, "Invalid size of IP packet "
   "(Number=%d / Length=%d). Discarded.\n",
   (elements_needed+elems), skb->len);
  return 0;
 }
 return elements_needed;
}
