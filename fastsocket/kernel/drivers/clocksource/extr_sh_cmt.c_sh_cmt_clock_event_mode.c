
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {int dummy; } ;
struct clock_event_device {int mode; int name; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;






 int FLAG_CLOCKEVENT ;
 struct sh_cmt_priv* ced_to_sh_cmt (struct clock_event_device*) ;
 int pr_info (char*,int ) ;
 int sh_cmt_clock_event_start (struct sh_cmt_priv*,int) ;
 int sh_cmt_stop (struct sh_cmt_priv*,int ) ;

__attribute__((used)) static void sh_cmt_clock_event_mode(enum clock_event_mode mode,
        struct clock_event_device *ced)
{
 struct sh_cmt_priv *p = ced_to_sh_cmt(ced);


 switch (ced->mode) {
 case 130:
 case 131:
  sh_cmt_stop(p, FLAG_CLOCKEVENT);
  break;
 default:
  break;
 }

 switch (mode) {
 case 130:
  pr_info("sh_cmt: %s used for periodic clock events\n",
   ced->name);
  sh_cmt_clock_event_start(p, 1);
  break;
 case 131:
  pr_info("sh_cmt: %s used for oneshot clock events\n",
   ced->name);
  sh_cmt_clock_event_start(p, 0);
  break;
 case 129:
 case 128:
  sh_cmt_stop(p, FLAG_CLOCKEVENT);
  break;
 default:
  break;
 }
}
