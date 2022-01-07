
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int bytein (scalar_t__) ;
 int byteout (scalar_t__,int ) ;

__attribute__((used)) static inline u_char
Read_hfc(struct IsdnCardState *cs, u_char regnum)
{
        u_char ret;

        byteout(cs->hw.hfcsx.base+1, regnum);
 ret = bytein(cs->hw.hfcsx.base);
 return(ret);
}
