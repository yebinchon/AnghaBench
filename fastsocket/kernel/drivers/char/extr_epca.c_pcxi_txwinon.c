
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {TYPE_1__* board; } ;
struct TYPE_2__ {int port; } ;


 int FEPMEM ;
 int outb_p (int ,int ) ;

__attribute__((used)) static void pcxi_txwinon(struct channel *ch)
{
 outb_p(FEPMEM, ch->board->port);
}
