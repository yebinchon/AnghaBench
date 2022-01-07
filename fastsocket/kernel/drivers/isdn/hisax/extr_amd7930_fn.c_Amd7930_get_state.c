
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {TYPE_2__ dc; } ;
typedef int BYTE ;


 int Amd7930_new_ph (struct IsdnCardState*) ;
 int rByteAMD (struct IsdnCardState*,int) ;

__attribute__((used)) static void
Amd7930_get_state(struct IsdnCardState *cs) {
        BYTE lsr = rByteAMD(cs, 0xA1);
        cs->dc.amd7930.ph_state = (lsr & 0x7) + 2;
        Amd7930_new_ph(cs);
}
