
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gendisk {TYPE_2__* queue; struct blk_integrity* integrity; } ;
struct blk_integrity {int flags; int name; int tag_size; int get_tag_fn; int set_tag_fn; int tuple_size; int verify_fn; int generate_fn; int sector_size; int kobj; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_4__ {int capabilities; } ;
struct TYPE_5__ {TYPE_1__ backing_dev_info; } ;


 int BDI_CAP_STABLE_WRITES ;
 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int INTEGRITY_FLAG_READ ;
 int INTEGRITY_FLAG_WRITE ;
 int KOBJ_ADD ;
 int __GFP_ZERO ;
 int bi_unsupported_name ;
 TYPE_3__* disk_to_dev (struct gendisk*) ;
 int integrity_cachep ;
 int integrity_ktype ;
 struct blk_integrity* kmem_cache_alloc (int ,int) ;
 int kmem_cache_free (int ,struct blk_integrity*) ;
 scalar_t__ kobject_init_and_add (int *,int *,int *,char*,char*) ;
 int kobject_uevent (int *,int ) ;
 int mark_tech_preview (char*,int *) ;
 int queue_logical_block_size (TYPE_2__*) ;

int blk_integrity_register(struct gendisk *disk, struct blk_integrity *template)
{
 struct blk_integrity *bi;
 static bool seen = 0;

 BUG_ON(disk == ((void*)0));

 if (!seen) {
  mark_tech_preview("DIF/DIX support", ((void*)0));
  seen = 1;
 }

 if (disk->integrity == ((void*)0)) {
  bi = kmem_cache_alloc(integrity_cachep,
          GFP_KERNEL | __GFP_ZERO);
  if (!bi)
   return -1;

  if (kobject_init_and_add(&bi->kobj, &integrity_ktype,
      &disk_to_dev(disk)->kobj,
      "%s", "integrity")) {
   kmem_cache_free(integrity_cachep, bi);
   return -1;
  }

  kobject_uevent(&bi->kobj, KOBJ_ADD);

  bi->flags |= INTEGRITY_FLAG_READ | INTEGRITY_FLAG_WRITE;
  bi->sector_size = queue_logical_block_size(disk->queue);
  disk->integrity = bi;
 } else
  bi = disk->integrity;


 if (template != ((void*)0)) {
  bi->name = template->name;
  bi->generate_fn = template->generate_fn;
  bi->verify_fn = template->verify_fn;
  bi->tuple_size = template->tuple_size;
  bi->set_tag_fn = template->set_tag_fn;
  bi->get_tag_fn = template->get_tag_fn;
  bi->tag_size = template->tag_size;
 } else
  bi->name = bi_unsupported_name;

 disk->queue->backing_dev_info.capabilities |= BDI_CAP_STABLE_WRITES;

 return 0;
}
