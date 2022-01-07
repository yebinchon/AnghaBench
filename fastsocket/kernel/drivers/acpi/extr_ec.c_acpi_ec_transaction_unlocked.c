
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction {scalar_t__ command; } ;
struct acpi_ec {int curr_lock; struct transaction* curr; int flags; } ;


 scalar_t__ ACPI_EC_COMMAND_QUERY ;
 int ACPI_EC_MSI_UDELAY ;
 scalar_t__ EC_FLAGS_MSI ;
 int EC_FLAGS_QUERY_PENDING ;
 int clear_bit (int ,int *) ;
 int ec_poll (struct acpi_ec*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_transaction (struct acpi_ec*) ;
 int udelay (int ) ;

__attribute__((used)) static int acpi_ec_transaction_unlocked(struct acpi_ec *ec,
     struct transaction *t)
{
 unsigned long tmp;
 int ret = 0;
 if (EC_FLAGS_MSI)
  udelay(ACPI_EC_MSI_UDELAY);

 spin_lock_irqsave(&ec->curr_lock, tmp);

 ec->curr = t;
 start_transaction(ec);
 if (ec->curr->command == ACPI_EC_COMMAND_QUERY)
  clear_bit(EC_FLAGS_QUERY_PENDING, &ec->flags);
 spin_unlock_irqrestore(&ec->curr_lock, tmp);
 ret = ec_poll(ec);
 spin_lock_irqsave(&ec->curr_lock, tmp);
 ec->curr = ((void*)0);
 spin_unlock_irqrestore(&ec->curr_lock, tmp);
 return ret;
}
