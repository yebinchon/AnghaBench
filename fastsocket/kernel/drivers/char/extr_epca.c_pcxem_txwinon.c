
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {TYPE_1__* board; int txwin; } ;
struct TYPE_2__ {scalar_t__ port; } ;


 int outb_p (int ,int) ;

__attribute__((used)) static void pcxem_txwinon(struct channel *ch)
{
 outb_p(ch->txwin, (int)ch->board->port + 1);
}
