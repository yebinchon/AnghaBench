
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_list; int lo_disk; int lo_queue; } ;


 int blk_cleanup_queue (int ) ;
 int kfree (struct loop_device*) ;
 int list_del (int *) ;
 int put_disk (int ) ;

__attribute__((used)) static void loop_free(struct loop_device *lo)
{
 blk_cleanup_queue(lo->lo_queue);
 put_disk(lo->lo_disk);
 list_del(&lo->lo_list);
 kfree(lo);
}
