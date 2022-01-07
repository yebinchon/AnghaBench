
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int scan_check; int abort_scan; int scan_completed; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int il_bg_abort_scan ;
 int il_bg_scan_check ;
 int il_bg_scan_completed ;

void
il_setup_scan_deferred_work(struct il_priv *il)
{
 INIT_WORK(&il->scan_completed, il_bg_scan_completed);
 INIT_WORK(&il->abort_scan, il_bg_abort_scan);
 INIT_DELAYED_WORK(&il->scan_check, il_bg_scan_check);
}
