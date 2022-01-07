
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int blkio_files ;
 int cgroup_add_files (struct cgroup*,struct cgroup_subsys*,int ,int ) ;

__attribute__((used)) static int blkiocg_populate(struct cgroup_subsys *subsys, struct cgroup *cgroup)
{
 return cgroup_add_files(cgroup, subsys, blkio_files,
    ARRAY_SIZE(blkio_files));
}
