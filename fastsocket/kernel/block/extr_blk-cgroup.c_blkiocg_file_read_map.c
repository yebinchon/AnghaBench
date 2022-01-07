
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_map_cb {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
struct blkio_cgroup {int dummy; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;


 int BLKIOFILE_ATTR (int ) ;
 int BLKIOFILE_POLICY (int ) ;
 int BLKIO_STAT_AVG_QUEUE_SIZE ;
 int BLKIO_STAT_CPU_SECTORS ;
 int BLKIO_STAT_CPU_SERVICED ;
 int BLKIO_STAT_CPU_SERVICE_BYTES ;
 int BLKIO_STAT_DEQUEUE ;
 int BLKIO_STAT_EMPTY_TIME ;
 int BLKIO_STAT_GROUP_WAIT_TIME ;
 int BLKIO_STAT_IDLE_TIME ;
 int BLKIO_STAT_MERGED ;
 int BLKIO_STAT_QUEUED ;
 int BLKIO_STAT_SERVICE_TIME ;
 int BLKIO_STAT_TIME ;
 int BLKIO_STAT_WAIT_TIME ;


 int BUG () ;
 int blkio_read_blkg_stats (struct blkio_cgroup*,struct cftype*,struct cgroup_map_cb*,int ,int,int) ;
 struct blkio_cgroup* cgroup_to_blkio_cgroup (struct cgroup*) ;

__attribute__((used)) static int blkiocg_file_read_map(struct cgroup *cgrp, struct cftype *cft,
    struct cgroup_map_cb *cb)
{
 struct blkio_cgroup *blkcg;
 enum blkio_policy_id plid = BLKIOFILE_POLICY(cft->private);
 int name = BLKIOFILE_ATTR(cft->private);

 blkcg = cgroup_to_blkio_cgroup(cgrp);

 switch(plid) {
 case 144:
  switch(name) {
  case 130:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_TIME, 0, 0);
  case 131:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_CPU_SECTORS, 0, 1);
  case 135:
   return blkio_read_blkg_stats(blkcg, cft, cb,
     BLKIO_STAT_CPU_SERVICE_BYTES, 1, 1);
  case 133:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_CPU_SERVICED, 1, 1);
  case 134:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_SERVICE_TIME, 1, 0);
  case 132:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_WAIT_TIME, 1, 0);
  case 137:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_MERGED, 1, 0);
  case 136:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_QUEUED, 1, 0);
  default:
   BUG();
  }
  break;
 case 143:
  switch(name){
  case 129:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_CPU_SERVICE_BYTES, 1, 1);
  case 128:
   return blkio_read_blkg_stats(blkcg, cft, cb,
      BLKIO_STAT_CPU_SERVICED, 1, 1);
  default:
   BUG();
  }
  break;
 default:
  BUG();
 }

 return 0;
}
