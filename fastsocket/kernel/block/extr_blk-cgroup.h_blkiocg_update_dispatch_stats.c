
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct blkio_group {int dummy; } ;



__attribute__((used)) static inline void blkiocg_update_dispatch_stats(struct blkio_group *blkg,
    uint64_t bytes, bool direction, bool sync) {}
