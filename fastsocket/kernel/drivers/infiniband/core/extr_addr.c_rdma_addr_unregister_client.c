
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_addr_client {int comp; } ;


 int put_client (struct rdma_addr_client*) ;
 int wait_for_completion (int *) ;

void rdma_addr_unregister_client(struct rdma_addr_client *client)
{
 put_client(client);
 wait_for_completion(&client->comp);
}
