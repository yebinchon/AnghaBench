
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mtu2_priv {int dummy; } ;
struct clock_event_device {int mode; int name; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;





 struct sh_mtu2_priv* ced_to_sh_mtu2 (struct clock_event_device*) ;
 int pr_info (char*,int ) ;
 int sh_mtu2_disable (struct sh_mtu2_priv*) ;
 int sh_mtu2_enable (struct sh_mtu2_priv*) ;

__attribute__((used)) static void sh_mtu2_clock_event_mode(enum clock_event_mode mode,
        struct clock_event_device *ced)
{
 struct sh_mtu2_priv *p = ced_to_sh_mtu2(ced);
 int disabled = 0;


 switch (ced->mode) {
 case 130:
  sh_mtu2_disable(p);
  disabled = 1;
  break;
 default:
  break;
 }

 switch (mode) {
 case 130:
  pr_info("sh_mtu2: %s used for periodic clock events\n",
   ced->name);
  sh_mtu2_enable(p);
  break;
 case 128:
  if (!disabled)
   sh_mtu2_disable(p);
  break;
 case 129:
 default:
  break;
 }
}
