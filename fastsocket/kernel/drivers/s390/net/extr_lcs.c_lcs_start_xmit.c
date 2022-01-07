
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ ml_priv; } ;
struct lcs_card {int dummy; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int __lcs_start_xmit (struct lcs_card*,struct sk_buff*,struct net_device*) ;
 int trace ;

__attribute__((used)) static int
lcs_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct lcs_card *card;
 int rc;

 LCS_DBF_TEXT(5, trace, "pktxmit");
 card = (struct lcs_card *) dev->ml_priv;
 rc = __lcs_start_xmit(card, skb, dev);
 return rc;
}
