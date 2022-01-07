
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int HSCX_CMDR ;
 int WRITEHSCX (struct IsdnCardState*,int,int ,int ) ;
 int waitforCEC (struct IsdnCardState*,int) ;

__attribute__((used)) static inline void
WriteHSCXCMDR(struct IsdnCardState *cs, int hscx, u_char data)
{
 waitforCEC(cs, hscx);
 WRITEHSCX(cs, hscx, HSCX_CMDR, data);
}
