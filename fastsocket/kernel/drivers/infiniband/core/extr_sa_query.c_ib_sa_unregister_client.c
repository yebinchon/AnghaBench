
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_client {int comp; } ;


 int ib_sa_client_put (struct ib_sa_client*) ;
 int wait_for_completion (int *) ;

void ib_sa_unregister_client(struct ib_sa_client *client)
{
 ib_sa_client_put(client);
 wait_for_completion(&client->comp);
}
