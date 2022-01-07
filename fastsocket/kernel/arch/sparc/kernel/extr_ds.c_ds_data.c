
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_queue_entry {int list; int req; struct ds_info* dp; } ;
struct ds_msg_tag {int dummy; } ;
struct ds_info {int dummy; } ;
struct ds_data {int handle; } ;


 int GFP_ATOMIC ;
 int __send_ds_nack (struct ds_info*,int ) ;
 int ds_wait ;
 int ds_work_list ;
 struct ds_queue_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct ds_msg_tag*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int ds_data(struct ds_info *dp, struct ds_msg_tag *pkt, int len)
{
 struct ds_data *dpkt = (struct ds_data *) pkt;
 struct ds_queue_entry *qp;

 qp = kmalloc(sizeof(struct ds_queue_entry) + len, GFP_ATOMIC);
 if (!qp) {
  __send_ds_nack(dp, dpkt->handle);
 } else {
  qp->dp = dp;
  memcpy(&qp->req, pkt, len);
  list_add_tail(&qp->list, &ds_work_list);
  wake_up(&ds_wait);
 }
 return 0;
}
