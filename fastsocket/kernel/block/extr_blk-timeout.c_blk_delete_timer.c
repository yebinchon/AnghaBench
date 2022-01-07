
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int timeout_list; } ;


 int list_del_init (int *) ;

void blk_delete_timer(struct request *req)
{
 list_del_init(&req->timeout_list);
}
