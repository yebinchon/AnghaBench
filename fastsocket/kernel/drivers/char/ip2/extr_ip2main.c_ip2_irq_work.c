
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_6__ {int tqueue_interrupt; int i2eStartMail; } ;


 int NO_MAIL_HERE ;
 int i2ServiceBoard (TYPE_1__*) ;
 int iiDisableMailIrq (TYPE_1__*) ;
 int iiGetMail (TYPE_1__*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
ip2_irq_work(i2eBordStrPtr pB)
{
 i2ServiceBoard( pB );


}
