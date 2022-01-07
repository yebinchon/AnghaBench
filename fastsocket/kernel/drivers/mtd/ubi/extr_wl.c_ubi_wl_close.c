
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int lookuptbl; int scrub; int free; int erroneous; int used; } ;


 int cancel_pending (struct ubi_device*) ;
 int dbg_wl (char*) ;
 int kfree (int ) ;
 int protection_queue_destroy (struct ubi_device*) ;
 int tree_destroy (int *) ;

void ubi_wl_close(struct ubi_device *ubi)
{
 dbg_wl("close the WL sub-system");
 cancel_pending(ubi);
 protection_queue_destroy(ubi);
 tree_destroy(&ubi->used);
 tree_destroy(&ubi->erroneous);
 tree_destroy(&ubi->free);
 tree_destroy(&ubi->scrub);
 kfree(ubi->lookuptbl);
}
