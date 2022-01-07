
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ asus; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_asuscom(struct IsdnCardState *cs)
{
 int bytecnt = 8;

 if (cs->hw.asus.cfg_reg)
  release_region(cs->hw.asus.cfg_reg, bytecnt);
}
