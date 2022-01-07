
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int ReadHDLCPCI (struct IsdnCardState*,int,int) ;

__attribute__((used)) static u_char
ReadHDLC_s(struct IsdnCardState *cs, int chan, u_char offset)
{
 return(0xff & ReadHDLCPCI(cs, chan, offset));
}
