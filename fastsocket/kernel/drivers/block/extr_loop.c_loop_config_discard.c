
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int max_discard_sectors; int discard_zeroes_data; scalar_t__ discard_alignment; scalar_t__ discard_granularity; } ;
struct request_queue {TYPE_4__ limits; } ;
struct loop_device {scalar_t__ lo_encrypt_key_size; struct request_queue* lo_queue; struct file* lo_backing_file; } ;
struct inode {TYPE_3__* i_sb; TYPE_2__* i_op; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_7__ {scalar_t__ s_blocksize; } ;
struct TYPE_6__ {int fallocate; } ;
struct TYPE_5__ {struct inode* host; } ;


 int QUEUE_FLAG_DISCARD ;
 int UINT_MAX ;
 int queue_flag_clear_unlocked (int ,struct request_queue*) ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;

__attribute__((used)) static void loop_config_discard(struct loop_device *lo)
{
 struct file *file = lo->lo_backing_file;
 struct inode *inode = file->f_mapping->host;
 struct request_queue *q = lo->lo_queue;







 if ((!inode->i_op->fallocate) ||
     lo->lo_encrypt_key_size) {
  q->limits.discard_granularity = 0;
  q->limits.discard_alignment = 0;
  q->limits.max_discard_sectors = 0;
  q->limits.discard_zeroes_data = 0;
  queue_flag_clear_unlocked(QUEUE_FLAG_DISCARD, q);
  return;
 }

 q->limits.discard_granularity = inode->i_sb->s_blocksize;
 q->limits.discard_alignment = 0;
 q->limits.max_discard_sectors = UINT_MAX >> 9;
 q->limits.discard_zeroes_data = 1;
 queue_flag_set_unlocked(QUEUE_FLAG_DISCARD, q);
}
