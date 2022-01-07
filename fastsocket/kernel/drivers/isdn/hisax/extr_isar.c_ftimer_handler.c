
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BCState {int Flag; TYPE_1__* cs; } ;
struct TYPE_2__ {scalar_t__ debug; } ;


 int BC_FLG_FTI_FTS ;
 int BC_FLG_FTI_RUN ;
 int BC_FLG_LL_CONN ;
 int B_LL_CONNECT ;
 int B_LL_OK ;
 int debugl1 (TYPE_1__*,char*,int ) ;
 int schedule_event (struct BCState*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
ftimer_handler(struct BCState *bcs) {
 if (bcs->cs->debug)
  debugl1(bcs->cs, "ftimer flags %04x",
   bcs->Flag);
 test_and_clear_bit(BC_FLG_FTI_RUN, &bcs->Flag);
 if (test_and_clear_bit(BC_FLG_LL_CONN, &bcs->Flag)) {
  schedule_event(bcs, B_LL_CONNECT);
 }
 if (test_and_clear_bit(BC_FLG_FTI_FTS, &bcs->Flag)) {
  schedule_event(bcs, B_LL_OK);
 }
}
