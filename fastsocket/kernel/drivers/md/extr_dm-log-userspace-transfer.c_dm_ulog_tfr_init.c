
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cn_msg {int dummy; } ;


 int DM_ULOG_PREALLOCED_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cn_add_callback (int *,char*,int ) ;
 int cn_del_callback (int *) ;
 int cn_ulog_callback ;
 void* kmalloc (int ,int ) ;
 void* prealloced_cn_msg ;
 void* prealloced_ulog_tfr ;
 int receiving_list ;
 int ulog_cn_id ;

int dm_ulog_tfr_init(void)
{
 int r;
 void *prealloced;

 INIT_LIST_HEAD(&receiving_list);

 prealloced = kmalloc(DM_ULOG_PREALLOCED_SIZE, GFP_KERNEL);
 if (!prealloced)
  return -ENOMEM;

 prealloced_cn_msg = prealloced;
 prealloced_ulog_tfr = prealloced + sizeof(struct cn_msg);

 r = cn_add_callback(&ulog_cn_id, "dmlogusr", cn_ulog_callback);
 if (r) {
  cn_del_callback(&ulog_cn_id);
  return r;
 }

 return 0;
}
