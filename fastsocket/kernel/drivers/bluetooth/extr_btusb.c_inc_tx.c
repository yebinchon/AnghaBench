
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btusb_data {int txlock; int tx_in_flight; int flags; } ;


 int BTUSB_SUSPENDING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int inc_tx(struct btusb_data *data)
{
 unsigned long flags;
 int rv;

 spin_lock_irqsave(&data->txlock, flags);
 rv = test_bit(BTUSB_SUSPENDING, &data->flags);
 if (!rv)
  data->tx_in_flight++;
 spin_unlock_irqrestore(&data->txlock, flags);

 return rv;
}
