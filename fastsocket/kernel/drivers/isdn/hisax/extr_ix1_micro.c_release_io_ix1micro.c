
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ ix1; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_ix1micro(struct IsdnCardState *cs)
{
 if (cs->hw.ix1.cfg_reg)
  release_region(cs->hw.ix1.cfg_reg, 4);
}
