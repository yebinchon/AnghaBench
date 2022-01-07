
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int dummy; } ;
struct ath9k_htc_priv {int* hwq_map; struct ath_hw* ah; } ;
typedef int qi ;


 int ARRAY_SIZE (int*) ;
 int ATH9K_HTC_INIT_TXQ (int) ;
 int ATH9K_TX_QUEUE_DATA ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_releasetxqueue (struct ath_hw*,int) ;
 int ath9k_hw_setuptxqueue (struct ath_hw*,int ,struct ath9k_tx_queue_info*) ;
 int ath_err (struct ath_common*,char*,int,int) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;

bool ath9k_htc_txq_setup(struct ath9k_htc_priv *priv, int subtype)
{
 struct ath_hw *ah = priv->ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_tx_queue_info qi;
 int qnum;

 memset(&qi, 0, sizeof(qi));
 ATH9K_HTC_INIT_TXQ(subtype);

 qnum = ath9k_hw_setuptxqueue(priv->ah, ATH9K_TX_QUEUE_DATA, &qi);
 if (qnum == -1)
  return 0;

 if (qnum >= ARRAY_SIZE(priv->hwq_map)) {
  ath_err(common, "qnum %u out of range, max %zu!\n",
   qnum, ARRAY_SIZE(priv->hwq_map));
  ath9k_hw_releasetxqueue(ah, qnum);
  return 0;
 }

 priv->hwq_map[subtype] = qnum;
 return 1;
}
