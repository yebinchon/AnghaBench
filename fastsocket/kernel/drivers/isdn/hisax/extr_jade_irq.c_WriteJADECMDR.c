
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int WRITEJADE (struct IsdnCardState*,int,int,int ) ;
 int waitforCEC (struct IsdnCardState*,int,int) ;

__attribute__((used)) static inline void
WriteJADECMDR(struct IsdnCardState *cs, int jade, int reg, u_char data)
{
 waitforCEC(cs, jade, reg);
 WRITEJADE(cs, jade, reg, data);
}
