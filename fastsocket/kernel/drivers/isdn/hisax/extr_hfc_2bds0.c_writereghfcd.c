
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct IsdnCardState {int dummy; } ;


 int HFCD_DATA ;
 int WriteReg (struct IsdnCardState*,int ,int ,int ) ;

__attribute__((used)) static void
writereghfcd(struct IsdnCardState *cs, u_char offset, u_char value)
{
 WriteReg(cs, HFCD_DATA, offset, value);
}
