
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kspd_notifications {int list; } ;


 int kspd_notifylist ;
 int list_add (int *,int *) ;

void kspd_notify(struct kspd_notifications *notify)
{
 list_add(&notify->list, &kspd_notifylist);
}
