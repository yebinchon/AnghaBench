
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
struct blkio_cgroup {int dummy; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;


 int BLKIOFILE_ATTR (int ) ;
 int BLKIOFILE_POLICY (int ) ;


 int BUG () ;
 int blkio_weight_write (struct blkio_cgroup*,int ) ;
 struct blkio_cgroup* cgroup_to_blkio_cgroup (struct cgroup*) ;

__attribute__((used)) static int
blkiocg_file_write_u64(struct cgroup *cgrp, struct cftype *cft, u64 val)
{
 struct blkio_cgroup *blkcg;
 enum blkio_policy_id plid = BLKIOFILE_POLICY(cft->private);
 int name = BLKIOFILE_ATTR(cft->private);

 blkcg = cgroup_to_blkio_cgroup(cgrp);

 switch(plid) {
 case 129:
  switch(name) {
  case 128:
   return blkio_weight_write(blkcg, val);
  }
  break;
 default:
  BUG();
 }

 return 0;
}
