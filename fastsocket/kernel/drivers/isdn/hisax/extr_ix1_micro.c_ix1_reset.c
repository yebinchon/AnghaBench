
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ ix1; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int HZ ;
 int HZDELAY (int) ;
 scalar_t__ SPECIAL_PORT_OFFSET ;
 int byteout (scalar_t__,int) ;

__attribute__((used)) static void
ix1_reset(struct IsdnCardState *cs)
{
 int cnt;


 cnt = 3 * (HZ / 10) + 1;
 while (cnt--) {
  byteout(cs->hw.ix1.cfg_reg + SPECIAL_PORT_OFFSET, 1);
  HZDELAY(1);
 }
 byteout(cs->hw.ix1.cfg_reg + SPECIAL_PORT_OFFSET, 0);
}
