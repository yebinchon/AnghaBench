
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_request {int wait; struct file* file; } ;
struct loop_device {int lo_queue; } ;
struct file {int dummy; } ;
struct bio {int * bi_bdev; struct switch_request* bi_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct bio* bio_alloc (int ,int ) ;
 int init_completion (int *) ;
 int loop_make_request (int ,struct bio*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int loop_switch(struct loop_device *lo, struct file *file)
{
 struct switch_request w;
 struct bio *bio = bio_alloc(GFP_KERNEL, 0);
 if (!bio)
  return -ENOMEM;
 init_completion(&w.wait);
 w.file = file;
 bio->bi_private = &w;
 bio->bi_bdev = ((void*)0);
 loop_make_request(lo->lo_queue, bio);
 wait_for_completion(&w.wait);
 return 0;
}
