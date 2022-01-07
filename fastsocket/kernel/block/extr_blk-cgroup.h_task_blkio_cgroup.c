
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct blkio_cgroup {int dummy; } ;



__attribute__((used)) static inline struct blkio_cgroup *
task_blkio_cgroup(struct task_struct *tsk) { return ((void*)0); }
