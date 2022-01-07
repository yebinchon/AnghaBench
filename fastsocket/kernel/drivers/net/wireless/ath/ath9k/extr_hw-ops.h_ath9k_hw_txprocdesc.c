
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_tx_status {int dummy; } ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* proc_txdesc ) (struct ath_hw*,void*,struct ath_tx_status*) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,void*,struct ath_tx_status*) ;

__attribute__((used)) static inline int ath9k_hw_txprocdesc(struct ath_hw *ah, void *ds,
          struct ath_tx_status *ts)
{
 return ath9k_hw_ops(ah)->proc_txdesc(ah, ds, ts);
}
