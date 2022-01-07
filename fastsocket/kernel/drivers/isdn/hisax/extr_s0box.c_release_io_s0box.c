
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ teles3; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int release_region (int ,int) ;

__attribute__((used)) static void
release_io_s0box(struct IsdnCardState *cs)
{
 release_region(cs->hw.teles3.cfg_reg, 8);
}
