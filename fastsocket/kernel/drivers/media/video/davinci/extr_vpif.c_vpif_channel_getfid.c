
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int ch_ctrl; } ;


 int VPIF_CH_FID_MASK ;
 int VPIF_CH_FID_SHIFT ;
 int regr (int ) ;
 TYPE_1__* vpifregs ;

int vpif_channel_getfid(u8 channel_id)
{
 return (regr(vpifregs[channel_id].ch_ctrl) & VPIF_CH_FID_MASK)
     >> VPIF_CH_FID_SHIFT;
}
