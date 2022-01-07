
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ isar; } ;
struct TYPE_4__ {TYPE_1__ isurf; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int mb () ;
 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
WriteISAR(struct IsdnCardState *cs, int mode, u_char offset, u_char value)
{
 writeb(value, cs->hw.isurf.isar + offset);mb();
}
