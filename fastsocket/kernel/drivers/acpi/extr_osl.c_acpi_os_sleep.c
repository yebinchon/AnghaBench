
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_integer ;


 int msecs_to_jiffies (int ) ;
 int schedule_timeout_interruptible (int ) ;

void acpi_os_sleep(acpi_integer ms)
{
 schedule_timeout_interruptible(msecs_to_jiffies(ms));
}
