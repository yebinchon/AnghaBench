
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int shift; int * page; int lock; scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct md_rdev {int desc_nr; int saved_raid_disk; int raid_disk; TYPE_2__ badblocks; int blocked_wait; int same_set; int corrected_errors; int read_errors; int nr_pending; int * bb_page; scalar_t__ sb_loaded; TYPE_1__ last_read_error; scalar_t__ sb_events; scalar_t__ new_data_offset; scalar_t__ data_offset; scalar_t__ flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int * kmalloc (int ,int ) ;
 int seqlock_init (int *) ;

int md_rdev_init(struct md_rdev *rdev)
{
 rdev->desc_nr = -1;
 rdev->saved_raid_disk = -1;
 rdev->raid_disk = -1;
 rdev->flags = 0;
 rdev->data_offset = 0;
 rdev->new_data_offset = 0;
 rdev->sb_events = 0;
 rdev->last_read_error.tv_sec = 0;
 rdev->last_read_error.tv_nsec = 0;
 rdev->sb_loaded = 0;
 rdev->bb_page = ((void*)0);
 atomic_set(&rdev->nr_pending, 0);
 atomic_set(&rdev->read_errors, 0);
 atomic_set(&rdev->corrected_errors, 0);

 INIT_LIST_HEAD(&rdev->same_set);
 init_waitqueue_head(&rdev->blocked_wait);





 rdev->badblocks.count = 0;
 rdev->badblocks.shift = -1;
 rdev->badblocks.page = kmalloc(PAGE_SIZE, GFP_KERNEL);
 seqlock_init(&rdev->badblocks.lock);
 if (rdev->badblocks.page == ((void*)0))
  return -ENOMEM;

 return 0;
}
