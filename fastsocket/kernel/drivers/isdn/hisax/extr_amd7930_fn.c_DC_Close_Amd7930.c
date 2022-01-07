
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int debug; } ;


 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*) ;

__attribute__((used)) static void
DC_Close_Amd7930(struct IsdnCardState *cs) {
        if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "Amd7930: DC_Close called");
}
