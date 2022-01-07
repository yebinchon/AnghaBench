
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int WriteHDLCPCI (struct IsdnCardState*,int,int ,int ) ;

__attribute__((used)) static void
WriteHDLC_s(struct IsdnCardState *cs, int chan, u_char offset, u_char value)
{
 WriteHDLCPCI(cs, chan, offset, value);
}
