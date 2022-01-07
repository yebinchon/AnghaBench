
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 scalar_t__ SPORTSTER_RES_IRQ ;
 int byteout (scalar_t__,int ) ;
 int release_region (int,int) ;

__attribute__((used)) static void
release_io_sportster(struct IsdnCardState *cs)
{
 int i, adr;

 byteout(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ, 0);
 for (i=0; i<64; i++) {
  adr = cs->hw.spt.cfg_reg + i *1024;
  release_region(adr, 8);
 }
}
