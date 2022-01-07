
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bas; } ;
struct cardstate {int bcs; TYPE_1__ hw; } ;


 int BAS_TIMEOUT ;
 int BS_RESETTING ;
 int HD_RESET_INTERRUPT_PIPE ;
 int req_submit (int ,int ,int ,int ) ;
 int update_basstate (int ,int ,int ) ;

__attribute__((used)) static inline void error_reset(struct cardstate *cs)
{

 update_basstate(cs->hw.bas, BS_RESETTING, 0);
 req_submit(cs->bcs, HD_RESET_INTERRUPT_PIPE, 0, BAS_TIMEOUT);
}
