
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {int data_adr; int base; } ;
struct TYPE_4__ {TYPE_1__ ax; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int IPAC_MASK ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
set_ipac_active(struct IsdnCardState *cs, u_int active)
{

 writereg(cs->hw.ax.base, cs->hw.ax.data_adr, IPAC_MASK,
  active ? 0xc0 : 0xff);
}
