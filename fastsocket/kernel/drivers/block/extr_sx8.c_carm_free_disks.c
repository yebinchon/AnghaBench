
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct gendisk {int flags; struct request_queue* queue; } ;
struct carm_host {TYPE_1__* port; } ;
struct TYPE_2__ {struct gendisk* disk; } ;


 unsigned int CARM_MAX_PORTS ;
 int GENHD_FL_UP ;
 int blk_cleanup_queue (struct request_queue*) ;
 int del_gendisk (struct gendisk*) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static void carm_free_disks(struct carm_host *host)
{
 unsigned int i;

 for (i = 0; i < CARM_MAX_PORTS; i++) {
  struct gendisk *disk = host->port[i].disk;
  if (disk) {
   struct request_queue *q = disk->queue;

   if (disk->flags & GENHD_FL_UP)
    del_gendisk(disk);
   if (q)
    blk_cleanup_queue(q);
   put_disk(disk);
  }
 }
}
