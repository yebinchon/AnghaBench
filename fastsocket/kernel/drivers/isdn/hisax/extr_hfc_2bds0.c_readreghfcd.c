
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int HFCD_DATA ;
 int ReadReg (struct IsdnCardState*,int ,int ) ;

__attribute__((used)) static u_char
readreghfcd(struct IsdnCardState *cs, u_char offset)
{
 return(ReadReg(cs, HFCD_DATA, offset));
}
