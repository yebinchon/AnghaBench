
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int HSCX_CMDR ;
 int MemWriteHSCX (struct IsdnCardState*,int,int ,int ) ;
 int MemwaitforCEC (struct IsdnCardState*,int) ;

__attribute__((used)) static inline void
MemWriteHSCXCMDR(struct IsdnCardState *cs, int hscx, u_char data)
{
 MemwaitforCEC(cs, hscx);
 MemWriteHSCX(cs, hscx, HSCX_CMDR, data);
}
