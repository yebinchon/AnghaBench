
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {int queue; TYPE_1__* disk; } ;
struct TYPE_2__ {int first_minor; } ;


 int NVME_MINORS ;
 int blk_cleanup_queue (int ) ;
 int kfree (struct nvme_ns*) ;
 int nvme_put_ns_idx (int) ;
 int put_disk (TYPE_1__*) ;

__attribute__((used)) static void nvme_ns_free(struct nvme_ns *ns)
{
 int index = ns->disk->first_minor / NVME_MINORS;
 put_disk(ns->disk);
 nvme_put_ns_idx(index);
 blk_cleanup_queue(ns->queue);
 kfree(ns);
}
