
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ ax; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int iounmap (void*) ;

__attribute__((used)) static void
release_io_bkm(struct IsdnCardState *cs)
{
 if (cs->hw.ax.base) {
  iounmap((void *) cs->hw.ax.base);
  cs->hw.ax.base = 0;
 }
}
