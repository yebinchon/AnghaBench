
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cgroup {int dummy; } ;
struct cftype {int private; } ;
struct blkio_cgroup {int dummy; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;


 int BLKIOFILE_ATTR (int ) ;
 int BLKIOFILE_POLICY (int ) ;







 int BUG () ;
 int blkio_read_policy_node_files (struct cftype*,struct blkio_cgroup*,struct seq_file*) ;
 struct blkio_cgroup* cgroup_to_blkio_cgroup (struct cgroup*) ;

__attribute__((used)) static int blkiocg_file_read(struct cgroup *cgrp, struct cftype *cft,
    struct seq_file *m)
{
 struct blkio_cgroup *blkcg;
 enum blkio_policy_id plid = BLKIOFILE_POLICY(cft->private);
 int name = BLKIOFILE_ATTR(cft->private);

 blkcg = cgroup_to_blkio_cgroup(cgrp);

 switch(plid) {
 case 134:
  switch(name) {
  case 132:
   blkio_read_policy_node_files(cft, blkcg, m);
   return 0;
  default:
   BUG();
  }
  break;
 case 133:
  switch(name){
  case 131:
  case 129:
  case 130:
  case 128:
   blkio_read_policy_node_files(cft, blkcg, m);
   return 0;
  default:
   BUG();
  }
  break;
 default:
  BUG();
 }

 return 0;
}
