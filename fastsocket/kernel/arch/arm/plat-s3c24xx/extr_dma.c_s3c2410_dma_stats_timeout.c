
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_dma_stats {int timeout_longest; int timeout_shortest; int timeout_avg; } ;



__attribute__((used)) static void
s3c2410_dma_stats_timeout(struct s3c2410_dma_stats *stats, int val)
{
 if (stats == ((void*)0))
  return;

 if (val > stats->timeout_longest)
  stats->timeout_longest = val;
 if (val < stats->timeout_shortest)
  stats->timeout_shortest = val;

 stats->timeout_avg += val;
}
