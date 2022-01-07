
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int dummy; } ;
struct clock_event_device {scalar_t__ mode; } ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 struct sh_tmu_priv* ced_to_sh_tmu (struct clock_event_device*) ;
 int sh_tmu_set_next (struct sh_tmu_priv*,unsigned long,int ) ;

__attribute__((used)) static int sh_tmu_clock_event_next(unsigned long delta,
       struct clock_event_device *ced)
{
 struct sh_tmu_priv *p = ced_to_sh_tmu(ced);

 BUG_ON(ced->mode != CLOCK_EVT_MODE_ONESHOT);


 sh_tmu_set_next(p, delta, 0);
 return 0;
}
