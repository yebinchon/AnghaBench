
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int tx_frame; int rx_frame; int rx_busy; int cycles; } ;
struct TYPE_3__ {int tx_frame; int rx_frame; int rx_busy; int cycles; } ;
struct ath_common {TYPE_2__ cc_survey; TYPE_1__ cc_ani; void* ah; } ;


 int AR_CCCNT ;
 int AR_MIBC ;
 int AR_MIBC_FMC ;
 int AR_RCCNT ;
 int AR_RFCNT ;
 int AR_TFCNT ;
 scalar_t__ REG_READ (void*,int ) ;
 int REG_WRITE (void*,int ,int ) ;

void ath_hw_cycle_counters_update(struct ath_common *common)
{
 u32 cycles, busy, rx, tx;
 void *ah = common->ah;


 REG_WRITE(ah, AR_MIBC, AR_MIBC_FMC);


 cycles = REG_READ(ah, AR_CCCNT);
 busy = REG_READ(ah, AR_RCCNT);
 rx = REG_READ(ah, AR_RFCNT);
 tx = REG_READ(ah, AR_TFCNT);


 REG_WRITE(ah, AR_CCCNT, 0);
 REG_WRITE(ah, AR_RFCNT, 0);
 REG_WRITE(ah, AR_RCCNT, 0);
 REG_WRITE(ah, AR_TFCNT, 0);


 REG_WRITE(ah, AR_MIBC, 0);


 common->cc_ani.cycles += cycles;
 common->cc_ani.rx_busy += busy;
 common->cc_ani.rx_frame += rx;
 common->cc_ani.tx_frame += tx;

 common->cc_survey.cycles += cycles;
 common->cc_survey.rx_busy += busy;
 common->cc_survey.rx_frame += rx;
 common->cc_survey.tx_frame += tx;
}
