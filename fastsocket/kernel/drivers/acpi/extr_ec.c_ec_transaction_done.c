
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_ec {int curr_lock; TYPE_1__* curr; } ;
struct TYPE_2__ {scalar_t__ done; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ec_transaction_done(struct acpi_ec *ec)
{
 unsigned long flags;
 int ret = 0;
 spin_lock_irqsave(&ec->curr_lock, flags);
 if (!ec->curr || ec->curr->done)
  ret = 1;
 spin_unlock_irqrestore(&ec->curr_lock, flags);
 return ret;
}
