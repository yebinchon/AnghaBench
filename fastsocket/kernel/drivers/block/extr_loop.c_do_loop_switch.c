
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switch_request {int wait; struct file* file; } ;
struct loop_device {int old_gfp_mask; int lo_blocksize; struct file* lo_backing_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* i_bdev; int i_mode; } ;
struct TYPE_3__ {int bd_block_size; } ;


 int PAGE_SIZE ;
 scalar_t__ S_ISBLK (int ) ;
 int __GFP_FS ;
 int __GFP_IO ;
 int complete (int *) ;
 int mapping_gfp_mask (struct address_space*) ;
 int mapping_set_gfp_mask (struct address_space*,int) ;

__attribute__((used)) static void do_loop_switch(struct loop_device *lo, struct switch_request *p)
{
 struct file *file = p->file;
 struct file *old_file = lo->lo_backing_file;
 struct address_space *mapping;


 if (!file)
  goto out;

 mapping = file->f_mapping;
 mapping_set_gfp_mask(old_file->f_mapping, lo->old_gfp_mask);
 lo->lo_backing_file = file;
 lo->lo_blocksize = S_ISBLK(mapping->host->i_mode) ?
  mapping->host->i_bdev->bd_block_size : PAGE_SIZE;
 lo->old_gfp_mask = mapping_gfp_mask(mapping);
 mapping_set_gfp_mask(mapping, lo->old_gfp_mask & ~(__GFP_IO|__GFP_FS));
out:
 complete(&p->wait);
}
