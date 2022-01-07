
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int bsg_request_fn (struct request_queue*,int ,int ) ;
 int iscsi_bsg_host_dispatch ;

__attribute__((used)) static void iscsi_bsg_request_fn(struct request_queue *q)
{
 bsg_request_fn(q, iscsi_bsg_host_dispatch, 0);
}
