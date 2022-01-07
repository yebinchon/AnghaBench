
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_transaction {int packet; } ;
struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* cancel_packet ) (struct fw_card*,int *) ;} ;


 int RCODE_CANCELLED ;
 int close_transaction (struct fw_transaction*,struct fw_card*,int ) ;
 scalar_t__ stub1 (struct fw_card*,int *) ;

int fw_cancel_transaction(struct fw_card *card,
     struct fw_transaction *transaction)
{






 if (card->driver->cancel_packet(card, &transaction->packet) == 0)
  return 0;






 return close_transaction(transaction, card, RCODE_CANCELLED);
}
