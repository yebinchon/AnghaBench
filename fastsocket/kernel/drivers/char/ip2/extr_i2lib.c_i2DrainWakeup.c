
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_2__* i2ChanStrPtr ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct TYPE_4__ {int pBookmarkWait; TYPE_1__ BookmarkTimer; } ;


 int CHANN ;
 int ITRC_DRAIN ;
 int ip2trace (int ,int ,int,int,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
i2DrainWakeup(unsigned long d)
{
 i2ChanStrPtr pCh = (i2ChanStrPtr)d;

 ip2trace (CHANN, ITRC_DRAIN, 10, 1, pCh->BookmarkTimer.expires );

 pCh->BookmarkTimer.expires = 0;
 wake_up_interruptible( &pCh->pBookmarkWait );
}
