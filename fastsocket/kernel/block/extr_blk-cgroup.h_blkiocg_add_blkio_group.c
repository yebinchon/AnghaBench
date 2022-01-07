
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_group {int dummy; } ;
struct blkio_cgroup {int dummy; } ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;
typedef int dev_t ;



__attribute__((used)) static inline void blkiocg_add_blkio_group(struct blkio_cgroup *blkcg,
  struct blkio_group *blkg, void *key, dev_t dev,
  enum blkio_policy_id plid) {}
