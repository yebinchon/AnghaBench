
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cn_del_callback (int *) ;
 int kfree (int ) ;
 int prealloced_cn_msg ;
 int ulog_cn_id ;

void dm_ulog_tfr_exit(void)
{
 cn_del_callback(&ulog_cn_id);
 kfree(prealloced_cn_msg);
}
