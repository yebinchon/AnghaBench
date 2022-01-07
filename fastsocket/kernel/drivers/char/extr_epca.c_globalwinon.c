
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel {TYPE_1__* board; } ;
struct TYPE_2__ {int (* globalwinon ) (struct channel*) ;} ;


 int stub1 (struct channel*) ;

__attribute__((used)) static void globalwinon(struct channel *ch)
{
 ch->board->globalwinon(ch);
}
