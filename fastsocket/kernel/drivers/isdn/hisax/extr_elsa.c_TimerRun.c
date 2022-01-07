
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int cfg; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 int ELIRQF_TIMER_RUN ;
 int ELIRQF_TIMER_RUN_PCC8 ;
 scalar_t__ ELSA_PCC8 ;
 scalar_t__ ELSA_QS1000 ;
 scalar_t__ ELSA_QS3000 ;
 int bytein (int ) ;

__attribute__((used)) static inline int
TimerRun(struct IsdnCardState *cs)
{
 register u_char v;

 v = bytein(cs->hw.elsa.cfg);
 if ((cs->subtyp == ELSA_QS1000) || (cs->subtyp == ELSA_QS3000))
  return (0 == (v & ELIRQF_TIMER_RUN));
 else if (cs->subtyp == ELSA_PCC8)
  return (v & ELIRQF_TIMER_RUN_PCC8);
 return (v & ELIRQF_TIMER_RUN);
}
