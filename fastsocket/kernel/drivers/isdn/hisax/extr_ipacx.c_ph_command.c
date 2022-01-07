
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ isac; } ;
struct IsdnCardState {int debug; int (* writeisac ) (struct IsdnCardState*,int ,unsigned int) ;TYPE_2__ dc; } ;


 int IPACX_CIX0 ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,unsigned int,int ) ;
 int stub1 (struct IsdnCardState*,int ,unsigned int) ;

__attribute__((used)) static void
ph_command(struct IsdnCardState *cs, unsigned int command)
{
 if (cs->debug &L1_DEB_ISAC)
  debugl1(cs, "ph_command (%#x) in (%#x)", command,
   cs->dc.isac.ph_state);



 cs->writeisac(cs, IPACX_CIX0, (command << 4) | 0x0E);
}
