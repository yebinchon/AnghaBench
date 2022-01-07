
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ njet; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ NETJET_IRQMASK0 ;
 scalar_t__ NETJET_IRQMASK1 ;
 int byteout (scalar_t__,int ) ;
 int release_region (scalar_t__,int) ;
 int releasetiger (struct IsdnCardState*) ;

void
release_io_netjet(struct IsdnCardState *cs)
{
 byteout(cs->hw.njet.base + NETJET_IRQMASK0, 0);
 byteout(cs->hw.njet.base + NETJET_IRQMASK1, 0);
 releasetiger(cs);
 release_region(cs->hw.njet.base, 256);
}
