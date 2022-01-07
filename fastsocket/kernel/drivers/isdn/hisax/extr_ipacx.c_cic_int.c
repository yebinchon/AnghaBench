
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ isac; } ;
struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int ) ;int debug; TYPE_2__ dc; } ;


 int D_L1STATECHANGE ;
 int IPACX_CIR0 ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int schedule_event (struct IsdnCardState*,int ) ;
 int stub1 (struct IsdnCardState*,int ) ;

__attribute__((used)) static inline void
cic_int(struct IsdnCardState *cs)
{
 u_char event;

 event = cs->readisac(cs, IPACX_CIR0) >> 4;
 if (cs->debug &L1_DEB_ISAC) debugl1(cs, "cic_int(event=%#x)", event);



  cs->dc.isac.ph_state = event;
  schedule_event(cs, D_L1STATECHANGE);
}
