
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold {scalar_t__ threshold; scalar_t__ threshold_set; } ;
typedef scalar_t__ dm_block_t ;



__attribute__((used)) static bool below_threshold(struct threshold *t, dm_block_t value)
{
 return t->threshold_set && value <= t->threshold;
}
