
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int online_trig; int online_trig_name; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kasprintf (int ,char*,int ) ;
 int led_trigger_register_simple (int ,int *) ;

__attribute__((used)) static int power_supply_create_gen_triggers(struct power_supply *psy)
{
 int rc = 0;

 psy->online_trig_name = kasprintf(GFP_KERNEL, "%s-online", psy->name);
 if (!psy->online_trig_name)
  goto online_failed;

 led_trigger_register_simple(psy->online_trig_name, &psy->online_trig);

 goto success;

online_failed:
 rc = -ENOMEM;
success:
 return rc;
}
