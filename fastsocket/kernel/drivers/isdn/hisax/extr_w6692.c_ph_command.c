
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int debug; int (* writeisac ) (struct IsdnCardState*,int ,unsigned int) ;} ;


 int L1_DEB_ISAC ;
 int W_CIX ;
 int debugl1 (struct IsdnCardState*,char*,unsigned int) ;
 int stub1 (struct IsdnCardState*,int ,unsigned int) ;

__attribute__((used)) static void
ph_command(struct IsdnCardState *cs, unsigned int command)
{
 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "ph_command %x", command);
 cs->writeisac(cs, W_CIX, command);
}
