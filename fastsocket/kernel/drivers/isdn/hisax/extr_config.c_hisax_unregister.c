
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisax_d_if {int erq; TYPE_1__* cs; } ;
struct TYPE_4__ {scalar_t__ typ; } ;
struct TYPE_3__ {size_t cardnr; } ;


 int HiSax_closecard (size_t) ;
 TYPE_2__* cards ;
 int skb_queue_purge (int *) ;

void hisax_unregister(struct hisax_d_if *hisax_d_if)
{
 cards[hisax_d_if->cs->cardnr].typ = 0;
 HiSax_closecard(hisax_d_if->cs->cardnr);
 skb_queue_purge(&hisax_d_if->erq);
}
