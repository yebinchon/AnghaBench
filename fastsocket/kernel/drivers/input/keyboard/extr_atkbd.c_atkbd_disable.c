
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serio; } ;
struct atkbd {TYPE_1__ ps2dev; scalar_t__ enabled; } ;


 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

__attribute__((used)) static inline void atkbd_disable(struct atkbd *atkbd)
{
 serio_pause_rx(atkbd->ps2dev.serio);
 atkbd->enabled = 0;
 serio_continue_rx(atkbd->ps2dev.serio);
}
