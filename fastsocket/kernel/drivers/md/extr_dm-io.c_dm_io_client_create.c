
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_io_client {scalar_t__ pool; int bios; } ;


 int ENOMEM ;
 struct dm_io_client* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MIN_BIOS ;
 int MIN_IOS ;
 int _dm_io_cache ;
 int bioset_create (int ,int ) ;
 int kfree (struct dm_io_client*) ;
 struct dm_io_client* kmalloc (int,int ) ;
 scalar_t__ mempool_create_slab_pool (int ,int ) ;
 int mempool_destroy (scalar_t__) ;

struct dm_io_client *dm_io_client_create(void)
{
 struct dm_io_client *client;

 client = kmalloc(sizeof(*client), GFP_KERNEL);
 if (!client)
  return ERR_PTR(-ENOMEM);

 client->pool = mempool_create_slab_pool(MIN_IOS, _dm_io_cache);
 if (!client->pool)
  goto bad;

 client->bios = bioset_create(MIN_BIOS, 0);
 if (!client->bios)
  goto bad;

 return client;

   bad:
 if (client->pool)
  mempool_destroy(client->pool);
 kfree(client);
 return ERR_PTR(-ENOMEM);
}
