
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int dummy; } ;
struct clock_event_device {int mode; int name; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;






 struct sh_tmu_priv* ced_to_sh_tmu (struct clock_event_device*) ;
 int pr_info (char*,int ) ;
 int sh_tmu_clock_event_start (struct sh_tmu_priv*,int) ;
 int sh_tmu_disable (struct sh_tmu_priv*) ;

__attribute__((used)) static void sh_tmu_clock_event_mode(enum clock_event_mode mode,
        struct clock_event_device *ced)
{
 struct sh_tmu_priv *p = ced_to_sh_tmu(ced);
 int disabled = 0;


 switch (ced->mode) {
 case 130:
 case 131:
  sh_tmu_disable(p);
  disabled = 1;
  break;
 default:
  break;
 }

 switch (mode) {
 case 130:
  pr_info("sh_tmu: %s used for periodic clock events\n",
   ced->name);
  sh_tmu_clock_event_start(p, 1);
  break;
 case 131:
  pr_info("sh_tmu: %s used for oneshot clock events\n",
   ced->name);
  sh_tmu_clock_event_start(p, 0);
  break;
 case 128:
  if (!disabled)
   sh_tmu_disable(p);
  break;
 case 129:
 default:
  break;
 }
}
