
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {scalar_t__ rcount; int rqueue; } ;


 int flush_scheduled_work () ;
 int mISDN_clear_bchannel (struct bchannel*) ;
 int skb_queue_purge (int *) ;

int
mISDN_freebchannel(struct bchannel *ch)
{
 mISDN_clear_bchannel(ch);
 skb_queue_purge(&ch->rqueue);
 ch->rcount = 0;
 flush_scheduled_work();
 return 0;
}
