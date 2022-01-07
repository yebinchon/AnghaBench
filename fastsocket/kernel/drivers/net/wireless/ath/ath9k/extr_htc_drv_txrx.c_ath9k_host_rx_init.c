
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_rssi; } ;
struct ath9k_htc_priv {TYPE_1__ rx; int op_flags; int ah; } ;


 int ATH_RSSI_DUMMY_MARKER ;
 int OP_SCANNING ;
 int ath9k_htc_opmode_init (struct ath9k_htc_priv*) ;
 int ath9k_hw_rxena (int ) ;
 int ath9k_hw_startpcureceive (int ,int ) ;
 int test_bit (int ,int *) ;

void ath9k_host_rx_init(struct ath9k_htc_priv *priv)
{
 ath9k_hw_rxena(priv->ah);
 ath9k_htc_opmode_init(priv);
 ath9k_hw_startpcureceive(priv->ah, test_bit(OP_SCANNING, &priv->op_flags));
 priv->rx.last_rssi = ATH_RSSI_DUMMY_MARKER;
}
