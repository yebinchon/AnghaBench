
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int * spurChans; } ;


 TYPE_1__* ar9003_modal_header (struct ath_hw*,int) ;

u8 *ar9003_get_spur_chan_ptr(struct ath_hw *ah, bool is2ghz)
{
 return ar9003_modal_header(ah, is2ghz)->spurChans;
}
