
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addr_client {int comp; int refcount; } ;


 int atomic_set (int *,int) ;
 int init_completion (int *) ;

void rdma_addr_register_client(struct rdma_addr_client *client)
{
 atomic_set(&client->refcount, 1);
 init_completion(&client->comp);
}
