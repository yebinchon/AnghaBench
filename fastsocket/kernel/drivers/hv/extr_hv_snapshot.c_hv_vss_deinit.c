
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_work_sync (int *) ;
 int cn_del_callback (int *) ;
 int vss_id ;
 int vss_send_op_work ;

void hv_vss_deinit(void)
{
 cn_del_callback(&vss_id);
 cancel_work_sync(&vss_send_op_work);
}
