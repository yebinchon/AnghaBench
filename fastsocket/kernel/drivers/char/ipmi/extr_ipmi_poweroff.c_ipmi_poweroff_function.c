
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_user ;
 int ready ;
 int specific_poweroff_func (int ) ;

__attribute__((used)) static void ipmi_poweroff_function(void)
{
 if (!ready)
  return;


 specific_poweroff_func(ipmi_user);
}
