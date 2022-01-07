
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {TYPE_1__* board; } ;
struct TYPE_2__ {int port; } ;


 int FEPMEM ;
 int epcaassert (int,char*) ;
 int inb (int ) ;

__attribute__((used)) static void pcxi_assertgwinon(struct channel *ch)
{
 epcaassert(inb(ch->board->port) & FEPMEM, "Global memory off");
}
