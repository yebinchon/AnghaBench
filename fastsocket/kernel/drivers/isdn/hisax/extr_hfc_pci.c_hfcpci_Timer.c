
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ timer; } ;
struct TYPE_6__ {TYPE_2__ hfcpci; } ;
struct IsdnCardState {TYPE_3__ hw; } ;


 scalar_t__ jiffies ;

__attribute__((used)) static void
hfcpci_Timer(struct IsdnCardState *cs)
{
 cs->hw.hfcpci.timer.expires = jiffies + 75;




}
