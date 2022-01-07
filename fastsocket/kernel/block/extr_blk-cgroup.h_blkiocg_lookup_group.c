
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_group {int dummy; } ;
struct blkio_cgroup {int dummy; } ;



__attribute__((used)) static inline struct blkio_group *
blkiocg_lookup_group(struct blkio_cgroup *blkcg, void *key) { return ((void*)0); }
