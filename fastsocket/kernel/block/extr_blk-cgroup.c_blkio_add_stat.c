
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 size_t BLKIO_STAT_ASYNC ;
 size_t BLKIO_STAT_READ ;
 size_t BLKIO_STAT_SYNC ;
 size_t BLKIO_STAT_WRITE ;

__attribute__((used)) static void blkio_add_stat(uint64_t *stat, uint64_t add, bool direction,
    bool sync)
{
 if (direction)
  stat[BLKIO_STAT_WRITE] += add;
 else
  stat[BLKIO_STAT_READ] += add;
 if (sync)
  stat[BLKIO_STAT_SYNC] += add;
 else
  stat[BLKIO_STAT_ASYNC] += add;
}
