
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_sdma_state {int current_state; int go_s99_running; int last_event; } ;
struct qib_pportdata {TYPE_1__* dd; struct qib_sdma_state sdma_state; } ;
typedef enum qib_sdma_events { ____Placeholder_qib_sdma_events } qib_sdma_events ;
struct TYPE_2__ {int (* f_sdma_hw_clean_up ) (struct qib_pportdata*) ;} ;
 int sdma_get (struct qib_sdma_state*) ;
 int sdma_hw_start_up (struct qib_pportdata*) ;
 int sdma_set_state (struct qib_pportdata*,int const) ;
 int sdma_start_sw_clean_up (struct qib_pportdata*) ;
 int sdma_sw_tear_down (struct qib_pportdata*) ;
 int stub1 (struct qib_pportdata*) ;

void __qib_sdma_process_event(struct qib_pportdata *ppd,
 enum qib_sdma_events event)
{
 struct qib_sdma_state *ss = &ppd->sdma_state;

 switch (ss->current_state) {
 case 134:
  switch (event) {
  case 145:
   break;
  case 142:






   ss->go_s99_running = 1;

  case 144:

   sdma_get(&ppd->sdma_state);
   sdma_set_state(ppd,
           133);
   break;
  case 143:
   break;
  case 141:
   sdma_sw_tear_down(ppd);
   break;
  case 140:
   break;
  case 139:
   break;
  case 138:
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 133:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   sdma_sw_tear_down(ppd);
   break;
  case 144:
   break;
  case 143:
   sdma_set_state(ppd, ss->go_s99_running ?
           128 :
           132);
   break;
  case 142:
   ss->go_s99_running = 1;
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  case 138:
   ss->go_s99_running = 0;
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 132:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   sdma_sw_tear_down(ppd);
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   sdma_set_state(ppd, 128);
   ss->go_s99_running = 1;
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   break;
  case 138:
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 131:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   ss->go_s99_running = 1;
   break;
  case 141:
   sdma_set_state(ppd,
           133);
   sdma_hw_start_up(ppd);
   break;
  case 140:
   break;
  case 139:
   break;
  case 138:
   ss->go_s99_running = 0;
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 130:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   sdma_start_sw_clean_up(ppd);
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   ss->go_s99_running = 1;
   break;
  case 141:
   break;
  case 140:
   sdma_set_state(ppd,
           131);
   sdma_start_sw_clean_up(ppd);
   break;
  case 139:
   break;
  case 138:
   ss->go_s99_running = 0;
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 129:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   sdma_start_sw_clean_up(ppd);
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   ss->go_s99_running = 1;
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   sdma_set_state(ppd,
           130);
   ppd->dd->f_sdma_hw_clean_up(ppd);
   break;
  case 138:
   ss->go_s99_running = 0;
   break;
  case 137:
   break;
  case 136:
   break;
  case 135:
   break;
  }
  break;

 case 128:
  switch (event) {
  case 145:
   sdma_set_state(ppd, 134);
   sdma_start_sw_clean_up(ppd);
   break;
  case 144:
   break;
  case 143:
   break;
  case 142:
   break;
  case 141:
   break;
  case 140:
   break;
  case 139:
   sdma_set_state(ppd,
           131);
   sdma_start_sw_clean_up(ppd);
   break;
  case 138:
   sdma_set_state(ppd, 129);
   ss->go_s99_running = 0;
   break;
  case 137:
   sdma_set_state(ppd,
           131);
   sdma_start_sw_clean_up(ppd);
   break;
  case 136:
   sdma_set_state(ppd, 129);
   break;
  case 135:
   break;
  }
  break;
 }

 ss->last_event = event;
}
