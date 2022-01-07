
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkio_group {int dummy; } ;



__attribute__((used)) static inline void cfq_blkiocg_update_io_add_stats(struct blkio_group *blkg,
 struct blkio_group *curr_blkg, bool direction, bool sync) {}
