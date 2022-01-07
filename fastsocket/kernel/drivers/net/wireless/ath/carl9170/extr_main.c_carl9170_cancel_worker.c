
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int ampdu_work; int ping_work; int ps_work; int led_work; int tx_janitor; int stat_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void carl9170_cancel_worker(struct ar9170 *ar)
{
 cancel_delayed_work_sync(&ar->stat_work);
 cancel_delayed_work_sync(&ar->tx_janitor);



 cancel_work_sync(&ar->ps_work);
 cancel_work_sync(&ar->ping_work);
 cancel_work_sync(&ar->ampdu_work);
}
