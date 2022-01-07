
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ath_hw {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int * antCtrlChain; } ;


 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 ar9003_hw_ant_ctrl_chain_get(struct ath_hw *ah, int chain,
     bool is2ghz)
{
 __le16 val = ar9003_modal_header(ah, is2ghz)->antCtrlChain[chain];
 return le16_to_cpu(val);
}
