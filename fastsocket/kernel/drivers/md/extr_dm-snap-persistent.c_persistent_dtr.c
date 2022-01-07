
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {scalar_t__ callbacks; scalar_t__ io_client; int metadata_wq; } ;
struct dm_exception_store {int dummy; } ;


 int destroy_workqueue (int ) ;
 int dm_io_client_destroy (scalar_t__) ;
 int free_area (struct pstore*) ;
 struct pstore* get_info (struct dm_exception_store*) ;
 int kfree (struct pstore*) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static void persistent_dtr(struct dm_exception_store *store)
{
 struct pstore *ps = get_info(store);

 destroy_workqueue(ps->metadata_wq);


 if (ps->io_client)
  dm_io_client_destroy(ps->io_client);
 free_area(ps);


 if (ps->callbacks)
  vfree(ps->callbacks);

 kfree(ps);
}
