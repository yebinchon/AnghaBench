
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff_head {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head data_vo_queue; struct sk_buff_head data_vi_queue; struct sk_buff_head data_bk_queue; struct sk_buff_head data_be_queue; struct sk_buff_head cab_ep_queue; struct sk_buff_head mgmt_ep_queue; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int data_vo_ep; int data_vi_ep; int data_bk_ep; int data_be_ep; int cab_ep; int mgmt_ep; int ah; } ;


 struct ath_common* ath9k_hw_common (int ) ;
 int ath_err (struct ath_common*,char*,int ) ;

__attribute__((used)) static inline struct sk_buff_head*
get_htc_epid_queue(struct ath9k_htc_priv *priv, u8 epid)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct sk_buff_head *epid_queue = ((void*)0);

 if (epid == priv->mgmt_ep)
  epid_queue = &priv->tx.mgmt_ep_queue;
 else if (epid == priv->cab_ep)
  epid_queue = &priv->tx.cab_ep_queue;
 else if (epid == priv->data_be_ep)
  epid_queue = &priv->tx.data_be_queue;
 else if (epid == priv->data_bk_ep)
  epid_queue = &priv->tx.data_bk_queue;
 else if (epid == priv->data_vi_ep)
  epid_queue = &priv->tx.data_vi_queue;
 else if (epid == priv->data_vo_ep)
  epid_queue = &priv->tx.data_vo_queue;
 else
  ath_err(common, "Invalid EPID: %d\n", epid);

 return epid_queue;
}
