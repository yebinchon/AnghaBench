
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int lock; } ;


 int acpi_ec_sync_query (struct acpi_ec*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_ec_gpe_query(void *ec_cxt)
{
 struct acpi_ec *ec = ec_cxt;
 if (!ec)
  return;
 mutex_lock(&ec->lock);
 acpi_ec_sync_query(ec);
 mutex_unlock(&ec->lock);
}
