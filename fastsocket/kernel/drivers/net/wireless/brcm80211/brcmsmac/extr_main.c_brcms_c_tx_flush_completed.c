
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__* di; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int brcms_txpktpendtot (struct brcms_c_info*) ;
 int dma_kick_tx (scalar_t__) ;

bool brcms_c_tx_flush_completed(struct brcms_c_info *wlc)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(wlc->hw->di); i++)
  if (wlc->hw->di[i])
   dma_kick_tx(wlc->hw->di[i]);

 return !brcms_txpktpendtot(wlc);
}
