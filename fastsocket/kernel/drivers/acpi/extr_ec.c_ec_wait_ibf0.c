
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int wait; } ;


 int ACPI_EC_DELAY ;
 int ETIME ;
 int ec_check_ibf0 (struct acpi_ec*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 scalar_t__ wait_event_timeout (int ,int ,unsigned long) ;

__attribute__((used)) static int ec_wait_ibf0(struct acpi_ec *ec)
{
 unsigned long delay = jiffies + msecs_to_jiffies(ACPI_EC_DELAY);

 while (time_before(jiffies, delay))
  if (wait_event_timeout(ec->wait, ec_check_ibf0(ec),
     msecs_to_jiffies(1)))
   return 0;
 return -ETIME;
}
