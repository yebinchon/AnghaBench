
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int dummy; } ;
typedef int WORD ;
typedef int BYTE ;


 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int wByteAMD (struct IsdnCardState*,int,int ) ;

__attribute__((used)) static void
WriteWordAmd7930(struct IsdnCardState *cs, BYTE reg, WORD val)
{
        wByteAMD(cs, 0x00, reg);
        wByteAMD(cs, 0x01, LOBYTE(val));
        wByteAMD(cs, 0x01, HIBYTE(val));
}
