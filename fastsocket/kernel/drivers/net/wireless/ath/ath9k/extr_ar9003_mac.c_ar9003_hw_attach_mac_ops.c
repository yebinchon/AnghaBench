
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_ops {int proc_txdesc; int set_txdesc; int get_isr; int set_desc_link; int rx_enable; } ;
struct ath_hw {int dummy; } ;


 int ar9003_hw_get_isr ;
 int ar9003_hw_proc_txdesc ;
 int ar9003_hw_rx_enable ;
 int ar9003_hw_set_desc_link ;
 int ar9003_set_txdesc ;
 struct ath_hw_ops* ath9k_hw_ops (struct ath_hw*) ;

void ar9003_hw_attach_mac_ops(struct ath_hw *hw)
{
 struct ath_hw_ops *ops = ath9k_hw_ops(hw);

 ops->rx_enable = ar9003_hw_rx_enable;
 ops->set_desc_link = ar9003_hw_set_desc_link;
 ops->get_isr = ar9003_hw_get_isr;
 ops->set_txdesc = ar9003_set_txdesc;
 ops->proc_txdesc = ar9003_hw_proc_txdesc;
}
