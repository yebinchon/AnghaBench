
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int send; } ;
struct TYPE_5__ {int Dprotocols; int nrbchan; TYPE_1__ D; } ;
struct TYPE_6__ {TYPE_2__ dev; void* hw; } ;
struct isac_hw {TYPE_3__ dch; int open; int ctrl; int release; int init; } ;


 int ISDN_P_TE_S0 ;
 int MAX_DFRAME_LEN_L1 ;
 int isac_ctrl ;
 int isac_init ;
 int isac_l1hw ;
 int isac_ph_state_bh ;
 int isac_release ;
 int mISDN_initdchannel (TYPE_3__*,int ,int ) ;
 int open_dchannel ;

int
mISDNisac_init(struct isac_hw *isac, void *hw)
{
 mISDN_initdchannel(&isac->dch, MAX_DFRAME_LEN_L1, isac_ph_state_bh);
 isac->dch.hw = hw;
 isac->dch.dev.D.send = isac_l1hw;
 isac->init = isac_init;
 isac->release = isac_release;
 isac->ctrl = isac_ctrl;
 isac->open = open_dchannel;
 isac->dch.dev.Dprotocols = (1 << ISDN_P_TE_S0);
 isac->dch.dev.nrbchan = 2;
 return 0;
}
