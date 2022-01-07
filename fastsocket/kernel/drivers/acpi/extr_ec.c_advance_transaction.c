
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct acpi_ec {int curr_lock; TYPE_1__* curr; } ;
struct TYPE_2__ {scalar_t__ wlen; scalar_t__ wi; scalar_t__ rlen; scalar_t__ ri; int done; int irq_count; int * rdata; int * wdata; } ;


 int ACPI_EC_FLAG_IBF ;
 int ACPI_EC_FLAG_OBF ;
 int acpi_ec_read_data (struct acpi_ec*) ;
 int acpi_ec_write_data (struct acpi_ec*,int ) ;
 scalar_t__ in_interrupt () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void advance_transaction(struct acpi_ec *ec, u8 status)
{
 unsigned long flags;
 spin_lock_irqsave(&ec->curr_lock, flags);
 if (!ec->curr)
  goto unlock;
 if (ec->curr->wlen > ec->curr->wi) {
  if ((status & ACPI_EC_FLAG_IBF) == 0)
   acpi_ec_write_data(ec,
    ec->curr->wdata[ec->curr->wi++]);
  else
   goto err;
 } else if (ec->curr->rlen > ec->curr->ri) {
  if ((status & ACPI_EC_FLAG_OBF) == 1) {
   ec->curr->rdata[ec->curr->ri++] = acpi_ec_read_data(ec);
   if (ec->curr->rlen == ec->curr->ri)
    ec->curr->done = 1;
  } else
   goto err;
 } else if (ec->curr->wlen == ec->curr->wi &&
     (status & ACPI_EC_FLAG_IBF) == 0)
  ec->curr->done = 1;
 goto unlock;
err:

 if (in_interrupt())
  ++ec->curr->irq_count;
unlock:
 spin_unlock_irqrestore(&ec->curr_lock, flags);
}
