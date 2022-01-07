
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_io_client {int bios; int pool; } ;


 int bioset_free (int ) ;
 int kfree (struct dm_io_client*) ;
 int mempool_destroy (int ) ;

void dm_io_client_destroy(struct dm_io_client *client)
{
 mempool_destroy(client->pool);
 bioset_free(client->bios);
 kfree(client);
}
