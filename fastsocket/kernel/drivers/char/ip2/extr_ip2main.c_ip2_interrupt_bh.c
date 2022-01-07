
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct work_struct {int dummy; } ;
typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_5__ {scalar_t__ i2eUsingIrq; } ;


 int bh_counter ;
 TYPE_1__* container_of (struct work_struct*,int ,int ) ;
 int i2ServiceBoard (TYPE_1__*) ;
 int i2eBordStr ;
 int iiEnableMailIrq (TYPE_1__*) ;
 int tqueue_interrupt ;

__attribute__((used)) static void
ip2_interrupt_bh(struct work_struct *work)
{
 i2eBordStrPtr pB = container_of(work, i2eBordStr, tqueue_interrupt);




 bh_counter++;

 if ( pB ) {
  i2ServiceBoard( pB );
  if( pB->i2eUsingIrq ) {

   iiEnableMailIrq(pB);
  }
 }
}
