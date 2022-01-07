
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cn_del_callback (int *) ;
 int kvp_id ;
 int kvp_sendkey_work ;
 int kvp_work ;

void hv_kvp_deinit(void)
{
 cn_del_callback(&kvp_id);
 cancel_delayed_work_sync(&kvp_work);
 cancel_work_sync(&kvp_sendkey_work);
}
