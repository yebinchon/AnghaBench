
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct cgroup_map_cb {int (* fill ) (struct cgroup_map_cb*,char*,scalar_t__) ;} ;
struct TYPE_2__ {scalar_t__** stat_arr; scalar_t__ dequeue; scalar_t__ empty_time; scalar_t__ idle_time; scalar_t__ group_wait_time; scalar_t__ avg_queue_size_samples; scalar_t__ avg_queue_size_sum; scalar_t__ time; } ;
struct blkio_group {TYPE_1__ stats; } ;
typedef enum stat_type { ____Placeholder_stat_type } stat_type ;
typedef enum stat_sub_type { ____Placeholder_stat_sub_type } stat_sub_type ;
typedef int dev_t ;


 int BLKIO_STAT_AVG_QUEUE_SIZE ;
 int BLKIO_STAT_DEQUEUE ;
 int BLKIO_STAT_EMPTY_TIME ;
 int BLKIO_STAT_GROUP_WAIT_TIME ;
 int BLKIO_STAT_IDLE_TIME ;
 size_t BLKIO_STAT_READ ;
 int BLKIO_STAT_TIME ;
 int BLKIO_STAT_TOTAL ;
 size_t BLKIO_STAT_WRITE ;
 int MAX_KEY_LEN ;
 scalar_t__ blkio_fill_stat (char*,int,scalar_t__,struct cgroup_map_cb*,int ) ;
 int blkio_get_key_name (int,int ,char*,int,int) ;
 int do_div (scalar_t__,scalar_t__) ;
 int stub1 (struct cgroup_map_cb*,char*,scalar_t__) ;
 int stub2 (struct cgroup_map_cb*,char*,scalar_t__) ;

__attribute__((used)) static uint64_t blkio_get_stat(struct blkio_group *blkg,
  struct cgroup_map_cb *cb, dev_t dev, enum stat_type type)
{
 uint64_t disk_total;
 char key_str[MAX_KEY_LEN];
 enum stat_sub_type sub_type;

 if (type == BLKIO_STAT_TIME)
  return blkio_fill_stat(key_str, MAX_KEY_LEN - 1,
     blkg->stats.time, cb, dev);
 for (sub_type = BLKIO_STAT_READ; sub_type < BLKIO_STAT_TOTAL;
   sub_type++) {
  blkio_get_key_name(sub_type, dev, key_str, MAX_KEY_LEN, 0);
  cb->fill(cb, key_str, blkg->stats.stat_arr[type][sub_type]);
 }
 disk_total = blkg->stats.stat_arr[type][BLKIO_STAT_READ] +
   blkg->stats.stat_arr[type][BLKIO_STAT_WRITE];
 blkio_get_key_name(BLKIO_STAT_TOTAL, dev, key_str, MAX_KEY_LEN, 0);
 cb->fill(cb, key_str, disk_total);
 return disk_total;
}
