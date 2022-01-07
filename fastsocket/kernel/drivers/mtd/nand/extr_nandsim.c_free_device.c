
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgnum; } ;
struct nandsim {TYPE_2__* pages; int nand_pages_slab; TYPE_1__ geom; scalar_t__ cfile; TYPE_2__* pages_written; int file_buf; } ;
struct TYPE_4__ {scalar_t__ byte; } ;


 int filp_close (scalar_t__,int *) ;
 int kfree (int ) ;
 int kmem_cache_destroy (int ) ;
 int kmem_cache_free (int ,scalar_t__) ;
 int vfree (TYPE_2__*) ;

__attribute__((used)) static void free_device(struct nandsim *ns)
{
 int i;

 if (ns->cfile) {
  kfree(ns->file_buf);
  vfree(ns->pages_written);
  filp_close(ns->cfile, ((void*)0));
  return;
 }

 if (ns->pages) {
  for (i = 0; i < ns->geom.pgnum; i++) {
   if (ns->pages[i].byte)
    kmem_cache_free(ns->nand_pages_slab,
      ns->pages[i].byte);
  }
  kmem_cache_destroy(ns->nand_pages_slab);
  vfree(ns->pages);
 }
}
