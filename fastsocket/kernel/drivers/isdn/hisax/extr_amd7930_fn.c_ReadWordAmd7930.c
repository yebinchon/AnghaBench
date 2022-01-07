
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int dummy; } ;
typedef int WORD ;
typedef int BYTE ;


 int rByteAMD (struct IsdnCardState*,int) ;
 int wByteAMD (struct IsdnCardState*,int,int) ;

__attribute__((used)) static WORD
ReadWordAmd7930(struct IsdnCardState *cs, BYTE reg)
{
        WORD res;

        if(reg < 8) {
         res = rByteAMD(cs, reg);
                res += 256*rByteAMD(cs, reg);
        }

        else {
                wByteAMD(cs, 0x00, reg);
         res = rByteAMD(cs, 0x01);
                res += 256*rByteAMD(cs, 0x01);
        }
 return (res);
}
