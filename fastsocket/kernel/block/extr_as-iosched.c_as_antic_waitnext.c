
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_data {scalar_t__ antic_status; unsigned long antic_start; unsigned long antic_expire; int antic_timer; } ;


 scalar_t__ ANTIC_OFF ;
 scalar_t__ ANTIC_WAIT_NEXT ;
 scalar_t__ ANTIC_WAIT_REQ ;
 int BUG_ON (int) ;
 int mod_timer (int *,unsigned long) ;

__attribute__((used)) static void as_antic_waitnext(struct as_data *ad)
{
 unsigned long timeout;

 BUG_ON(ad->antic_status != ANTIC_OFF
   && ad->antic_status != ANTIC_WAIT_REQ);

 timeout = ad->antic_start + ad->antic_expire;

 mod_timer(&ad->antic_timer, timeout);

 ad->antic_status = ANTIC_WAIT_NEXT;
}
