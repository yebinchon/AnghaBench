
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_phys_segments; } ;
typedef int atomic_t ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void raid5_inc_bi_active_stripes(struct bio *bio)
{
 atomic_t *segments = (atomic_t *)&bio->bi_phys_segments;
 atomic_inc(segments);
}
