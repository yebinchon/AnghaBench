
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int update_2g5g; int is_2g; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;



__attribute__((used)) static void ar9003_mci_2g5g_changed(struct ath_hw *ah, bool is_2g)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 if (!mci->update_2g5g &&
     (mci->is_2g != is_2g))
  mci->update_2g5g = 1;

 mci->is_2g = is_2g;
}
