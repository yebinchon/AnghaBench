
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dp_state {int aux; int head; int outp; int disp; TYPE_1__* func; } ;
struct TYPE_2__ {int (* pattern ) (int ,int ,int ,int ) ;} ;


 int DBG (char*,int ) ;
 int DPCD_LC02 ;
 int DPCD_LC02_TRAINING_PATTERN_SET ;
 int nv_rdaux (int ,int ,int *,int) ;
 int nv_wraux (int ,int ,int *,int) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
dp_set_training_pattern(struct dp_state *dp, u8 pattern)
{
 u8 sink_tp;

 DBG("training pattern %d\n", pattern);
 dp->func->pattern(dp->disp, dp->outp, dp->head, pattern);

 nv_rdaux(dp->aux, DPCD_LC02, &sink_tp, 1);
 sink_tp &= ~DPCD_LC02_TRAINING_PATTERN_SET;
 sink_tp |= pattern;
 nv_wraux(dp->aux, DPCD_LC02, &sink_tp, 1);
}
