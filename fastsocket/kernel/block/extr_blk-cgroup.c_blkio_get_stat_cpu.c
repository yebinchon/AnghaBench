
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct cgroup_map_cb {int (* fill ) (struct cgroup_map_cb*,char*,scalar_t__) ;} ;
struct blkio_group {int dummy; } ;
typedef enum stat_type_cpu { ____Placeholder_stat_type_cpu } stat_type_cpu ;
typedef enum stat_sub_type { ____Placeholder_stat_sub_type } stat_sub_type ;
typedef int dev_t ;


 int BLKIO_STAT_CPU_SECTORS ;
 int BLKIO_STAT_READ ;
 int BLKIO_STAT_TOTAL ;
 int BLKIO_STAT_WRITE ;
 int MAX_KEY_LEN ;
 scalar_t__ blkio_fill_stat (char*,int,scalar_t__,struct cgroup_map_cb*,int ) ;
 int blkio_get_key_name (int,int ,char*,int,int) ;
 scalar_t__ blkio_read_stat_cpu (struct blkio_group*,int,int) ;
 int stub1 (struct cgroup_map_cb*,char*,scalar_t__) ;
 int stub2 (struct cgroup_map_cb*,char*,scalar_t__) ;

__attribute__((used)) static uint64_t blkio_get_stat_cpu(struct blkio_group *blkg,
  struct cgroup_map_cb *cb, dev_t dev, enum stat_type_cpu type)
{
 uint64_t disk_total, val;
 char key_str[MAX_KEY_LEN];
 enum stat_sub_type sub_type;

 if (type == BLKIO_STAT_CPU_SECTORS) {
  val = blkio_read_stat_cpu(blkg, type, 0);
  return blkio_fill_stat(key_str, MAX_KEY_LEN - 1, val, cb, dev);
 }

 for (sub_type = BLKIO_STAT_READ; sub_type < BLKIO_STAT_TOTAL;
   sub_type++) {
  blkio_get_key_name(sub_type, dev, key_str, MAX_KEY_LEN, 0);
  val = blkio_read_stat_cpu(blkg, type, sub_type);
  cb->fill(cb, key_str, val);
 }

 disk_total = blkio_read_stat_cpu(blkg, type, BLKIO_STAT_READ) +
   blkio_read_stat_cpu(blkg, type, BLKIO_STAT_WRITE);

 blkio_get_key_name(BLKIO_STAT_TOTAL, dev, key_str, MAX_KEY_LEN, 0);
 cb->fill(cb, key_str, disk_total);
 return disk_total;
}
