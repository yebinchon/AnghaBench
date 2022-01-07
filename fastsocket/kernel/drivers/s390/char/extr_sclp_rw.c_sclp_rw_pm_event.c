
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_register {int dummy; } ;
typedef enum sclp_pm_event { ____Placeholder_sclp_pm_event } sclp_pm_event ;


 int sclp_console_pm_event (int) ;

__attribute__((used)) static void sclp_rw_pm_event(struct sclp_register *reg,
        enum sclp_pm_event sclp_pm_event)
{
 sclp_console_pm_event(sclp_pm_event);
}
